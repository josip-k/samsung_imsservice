.class public Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;
.super Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.source "BaseProvisionAPIRequest.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# static fields
.field private static final serialVersionUID:J = -0x3094db69a4e1e91aL


# instance fields
.field public TAG:Ljava/lang/String;

.field protected final transient mCookieJar:Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

.field protected transient mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field protected transient mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 59
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->prepareDefaultHeader(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Ljava/util/Map;)V

    .line 33
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 61
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    .line 63
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieJar:Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 65
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 49
    invoke-static {p1, p3}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->prepareDefaultHeader(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Ljava/util/Map;)V

    .line 33
    const-class p1, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 51
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    .line 53
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieJar:Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 55
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Ljava/util/Map;)V

    .line 33
    const-class p1, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 41
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    .line 43
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieJar:Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    .line 44
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method private static prepareDefaultHeader(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->processDefaultHeader(Ljava/util/Map;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static prepareDefaultHeader(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    .line 79
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->processDefaultHeader(Ljava/util/Map;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static processDefaultHeader(Ljava/util/Map;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Connection"

    const-string v1, "close"

    .line 88
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "x-att-clientVersion"

    .line 95
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "x-att-clientId"

    .line 96
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->getHttpClientID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "x-att-contextInfo"

    .line 97
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->BUILD_INFO:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x-att-deviceId"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method protected checkAndHandleCPSError(Ljava/lang/String;)Z
    .locals 4

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 126
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "requestError"

    .line 127
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "serviceException"

    .line 131
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "messageId"

    .line 132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CPS.SVC-1007"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CPS.SVC-1008"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CPS.SVC-1015"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPS errors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->goFailedCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return v1
.end method

.method protected checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .locals 4

    .line 147
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Retry-After"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryAfter is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "seconds retryAfterHeader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public getRetryInstance(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    .line 167
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0

    .line 0
    return-object p0
.end method

.method protected goFailedCall()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method protected goFailedCall(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void
.end method

.method protected goSuccessfulCall()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method protected goSuccessfulCall(Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void
.end method

.method public updateServerRoot(Ljava/lang/String;)V
    .locals 2

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateServerRoot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
