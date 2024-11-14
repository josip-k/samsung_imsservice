.class public Lcom/sec/internal/ims/core/RegistrationRatDecider;
.super Ljava/lang/Object;
.source "RegistrationRatDecider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegistrationRatDecider"


# instance fields
.field context:Landroid/content/Context;

.field governor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

.field mno:Lcom/sec/internal/constants/Mno;

.field mobileDataNetworkType:I

.field networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

.field networkSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field pdnController:Lcom/sec/internal/ims/core/PdnController;

.field pdnType:I

.field phoneId:I

.field preferredPdnType:I

.field profile:Lcom/sec/ims/settings/ImsProfile;

.field registerState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field volteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->context:Landroid/content/Context;

    .line 52
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    .line 53
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->governor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    .line 54
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    .line 55
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 56
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->volteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 58
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 59
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mobileDataNetworkType:I

    .line 60
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnType:I

    .line 61
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkSet:Ljava/util/Set;

    .line 62
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mno:Lcom/sec/internal/constants/Mno;

    .line 63
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->registerState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 65
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->preferredPdnType:I

    return-void
.end method

.method static getDecidedRat(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)I
    .locals 1

    .line 70
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationRatDecider;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationRatDecider;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->getDecidedRat()I

    move-result p0

    return p0
.end method

.method private getNormalRegistrationRat()I
    .locals 5

    .line 135
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->isVowifiAvailalble()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12

    return p0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->getAvailableMobileNetwork()I

    move-result v0

    .line 142
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->isValidRat(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    sget-object v2, Lcom/sec/internal/ims/core/RegistrationRatDecider;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findBestNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 149
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->printFailReason(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isCctOrChaVowifiCoditionNotMet()Z
    .locals 3

    .line 237
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->isCCT(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->isCHA(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->context:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-static {v0, v2}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->context:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    .line 241
    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/VowifiConfig;->getRoamPrefMode(Landroid/content/Context;II)I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isImsRegisteredOnMobileRat()Z
    .locals 2

    .line 232
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->registerState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidRat(I)Z
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnType:I

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    .line 208
    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->isNetworkAvailable(III)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->governor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    .line 210
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p1, 0x12

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToGetMobileDataRat()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->isCctOrChaVowifiCoditionNotMet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->isImsRegisteredOnMobileRat()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private printFailReason(ILjava/lang/String;)V
    .locals 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " - serviceSet empty"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnType:I

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/internal/ims/core/PdnController;->isNetworkAvailable(III)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, " - NetworkAvailable: false"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz p1, :cond_2

    const-string p1, " - OOS: true"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->governor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0x12

    if-eq p1, v1, :cond_3

    const-string p1, "- Roaming not allowed"

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, " - networkSet empty"

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_4
    sget-object p1, Lcom/sec/internal/ims/core/RegistrationRatDecider;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found best network in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailableMobileNetwork()I
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->needToGetMobileDataRat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mobileDataNetworkType:I

    invoke-static {v1}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v1

    .line 223
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/RegistrationRatDecider;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableMobileNetwork: network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mobileDataType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mobileDataNetworkType:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " => rat="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public getDecidedRat()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->getEmergencyRegistrationRat()I

    move-result p0

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->getNormalRegistrationRat()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getEmergencyRegistrationRat()I
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd

    const/16 v3, 0x14

    if-eq v0, v1, :cond_6

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 108
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v1

    .line 109
    sget-object v3, Lcom/sec/internal/ims/core/RegistrationRatDecider;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current RAT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " contains network in profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", hasEmergnecy option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    .line 110
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {v3, v4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->volteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_3

    .line 119
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getVoWIFIEmergencyCallRat(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    return v0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v3, :cond_4

    return v3

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-nez v0, :cond_5

    .line 128
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/ImsUtil;->getRatInNoSimCase(ILandroid/content/Context;)I

    move-result p0

    return p0

    :cond_5
    return v2

    .line 96
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x12

    return p0

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_8

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne p0, v3, :cond_8

    return v3

    :cond_8
    return v2
.end method

.method public isVowifiAvailalble()Z
    .locals 4

    .line 155
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnType:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_3

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkSet:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 158
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->needWifiNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->profile:Lcom/sec/ims/settings/ImsProfile;

    .line 160
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->preferredPdnType:I

    if-ne v0, v2, :cond_3

    .line 163
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    const-string v1, "findBestNetwork: WIFI"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 169
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnType:I

    sget v1, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    if-ne v0, v1, :cond_4

    .line 171
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    const-string v1, "findBestNetwork: WIFI-P2P (Wifi-Direct or Mobile-HotSpot connected)"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->pdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->isCctOrChaVowifiCoditionNotMet()Z

    move-result v0

    if-nez v0, :cond_5

    .line 178
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->phoneId:I

    const-string v1, "findBestNetwork: WIFI (ePDG connected)"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public needWifiNetwork()Z
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->mno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->governor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->context:Landroid/content/Context;

    .line 196
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->context:Landroid/content/Context;

    .line 197
    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->networkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->governor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    .line 199
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasNetworkFailure()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 202
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationRatDecider;->preferredPdnType:I

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method
