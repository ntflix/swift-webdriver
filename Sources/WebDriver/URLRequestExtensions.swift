import Foundation

#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif

extension URLSession {
    func dataTask(
        with request: URLRequest,
        _ completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void
    )
        -> URLSessionDataTask
    {
        dataTask(with: request) { data, response, error in
            if let error {
                completion(.failure(error))
            } else if let data, let response = response as? HTTPURLResponse {
                completion(.success((data, response)))
            } else {
                fatalError("Unexpected result from URLSessionDataTask.")
            }
        }
    }
}

extension URLRequest {
    private static let customSession: URLSession = {
        let config = URLSessionConfiguration.default
        config.httpMaximumConnectionsPerHost = 20
        config.timeoutIntervalForRequest = 30
        return URLSession(configuration: config)
    }()

    func send() async throws -> (Int, Data) {
        let (data, response) = try await Self.customSession.data(for: self)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }

        return (httpResponse.statusCode, data)
    }
}
