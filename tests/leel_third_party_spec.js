/* global it */
/* global expect */
/* global describe */

var ThirdParty = require("../leel_third_party");

describe("leel-third-party", function () {
	it("should return correct object", function () {
		var result = ThirdParty.thirdParty();
		expect(result.object).toBe("Third party object");
	});
});