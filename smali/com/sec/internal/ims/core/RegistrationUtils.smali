.class Lcom/sec/internal/ims/core/RegistrationUtils;
.super Ljava/lang/Object;
.source "RegistrationUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-Utils"


# direct methods
.method public static synthetic $r8$lambda$FKvHTlqlmzwEX7crVe9Mkx55MQA(ILandroid/net/Network;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/RegistrationUtils;->lambda$getAllByNameWithThread$2(ILandroid/net/Network;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KP8XDdJYTAru61fqwwAl6FGXCsY(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->lambda$updateImsIcon$0(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/ImsIconManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QVqEai9IsKVn7QlZPCYRkKI2FJo(ILandroid/net/Network;Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/sec/internal/ims/core/RegistrationUtils;->lambda$getHostAddressWithThread$1(ILandroid/net/Network;Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static IsNonDirectRoamingCase(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "RegiMgr-Utils"

    if-nez p1, :cond_0

    const-string p1, "IsNonDirectRoamingCase, get operator from TelephonyManager."

    .line 309
    invoke-static {v1, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo p1, "phone"

    .line 310
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 311
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 312
    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p0, "IsNonDirectRoamingCase, get operator from SimManager."

    .line 314
    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result p1

    .line 317
    invoke-interface {p2, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object p2

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    const-string p2, "20404"

    .line 321
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "BAE0000000000000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static checkAusEmergencyCall(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 586
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "gsm.operator.numeric"

    const-string p2, "00101"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "505"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static checkConfigForInitialRegistration(Landroid/content/Context;Lcom/sec/internal/ims/core/RegisterTask;ZZZZLcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/NetworkEventController;)Z
    .locals 6

    .line 1147
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1148
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1150
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    const/4 v4, 0x1

    if-ne p0, v2, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    move p0, v3

    .line 1151
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    const-string v5, "RegiMgr-Utils"

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-nez p0, :cond_3

    .line 1152
    :cond_2
    invoke-interface {p6, p1}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->tryRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "try RCS autoconfiguration"

    .line 1153
    invoke-static {v5, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1154
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->TRY_RCS_CONFIG:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v3

    :cond_3
    if-eqz p2, :cond_5

    .line 1158
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez p3, :cond_5

    .line 1159
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p0, p2, :cond_5

    :cond_4
    const-string p0, "capability is not configured"

    .line 1160
    invoke-static {v5, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 p0, 0x1f4

    .line 1162
    invoke-virtual {p7, v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    return v3

    .line 1167
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isOmadmConfigAvailable()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p4, :cond_7

    .line 1168
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p0, p2, :cond_7

    .line 1169
    :cond_6
    invoke-virtual {p8, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig(I)V

    .line 1170
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->DM_TRIGGERED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v3

    .line 1176
    :cond_7
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p0

    if-nez p0, :cond_8

    .line 1177
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkProfileUpdateFromDM(Z)V

    .line 1179
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1180
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkAcsPcscfListChange()V

    .line 1188
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p0, p2, :cond_a

    .line 1189
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p0

    if-eqz p0, :cond_a

    if-nez p5, :cond_a

    const-string p0, "No Emergency Call is made,so dont try for Emergency Register"

    .line 1190
    invoke-static {v5, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1191
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->KDDI_EMERGENCY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v3

    :cond_a
    return v4
.end method

.method protected static checkInitialRegistrationIsReady(Lcom/sec/internal/ims/core/RegisterTask;Ljava/util/List;ZZZLcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;ZZZ",
            "Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;",
            "Lcom/sec/internal/ims/core/RegistrationManagerHandler;",
            ")Z"
        }
    .end annotation

    .line 1089
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p4

    .line 1090
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "RegiMgr-Utils"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/16 p2, 0x12

    .line 1091
    invoke-virtual {v0, p2}, Lcom/sec/ims/settings/ImsProfile;->isNetworkEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " tryRegister: Airplane mode is on"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1094
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->FLIGHT_MODE_ON:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v2

    .line 1098
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isReadyToGetReattach()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1099
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "tryRegister: task "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is throttled."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1100
    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {p1, p2, p3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1101
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNextRetryMillis()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-lez p3, :cond_2

    .line 1103
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tryRegister: retry in "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p3, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1104
    invoke-virtual {p6, p4, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1105
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "NOT_TRIGGERED : THROTTLED : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1108
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->REGI_THROTTLED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v2

    .line 1112
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p2

    invoke-interface {p5, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->pendingRcsRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1113
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->PENDING_RCS_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v2

    .line 1117
    :cond_4
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_7

    .line 1118
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1121
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object p4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p1, p4, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object p4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object p6, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {p4, p6}, [Lcom/sec/internal/constants/Mno;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1122
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RegisterTask : TtyType="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mTTYMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1122
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1124
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->CS_TTY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v2

    .line 1129
    :cond_5
    invoke-static {p2, p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPriorityRegiedTask(ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1130
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    const-string p2, "checkHigherPriorityRegiedTask != null"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1131
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->HIGHER_PRIORITY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v2

    .line 1135
    :cond_6
    invoke-interface {p5, p0, p3}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->isRcsRoamingPref(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1136
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RCS_ROAMING:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v2

    :cond_7
    return p2
.end method

.method static determineUpdateRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;Ljava/util/Set;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 922
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RegiMgr-Utils"

    if-eqz p5, :cond_0

    const-string p1, "determineUpdateRegistration: Force to do Re-register."

    .line 927
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, ""

    .line 929
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string/jumbo p1, "service changed by user"

    .line 931
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 933
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->skipReRegi(Lcom/sec/internal/ims/core/RegisterTask;II)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 935
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "determineUpdateRegistration: no need to re-register due to the policy. previousRat="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rat="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 936
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/ims/settings/ImsProfile;->getReregiOnRatChange()I

    move-result p5

    const/4 v3, 0x2

    if-ne p5, v3, :cond_4

    const/16 p5, 0x14

    if-ne p1, p5, :cond_2

    if-ne p2, p5, :cond_3

    :cond_2
    if-eq p1, p5, :cond_4

    if-ne p2, p5, :cond_4

    :cond_3
    const-string p1, "determineUpdateRegistration: Need to re-register due to re-registration on NR policy."

    .line 939
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "RAT has changed from/to NR"

    .line 941
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 942
    :cond_4
    invoke-interface {p4, p3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "mobile data changed : 0"

    .line 943
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    const-string p1, "determineUpdateRegistration: service has changed. Re-register."

    .line 944
    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo p1, "service has changed"

    .line 946
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p0, "determineUpdateRegistration: Same services. No need to re-register."

    .line 950
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    :goto_0
    const/4 v1, 0x0

    :cond_8
    :goto_1
    return v1
.end method

.method static filterserviceFbe(Landroid/content/Context;Ljava/util/Set;Lcom/sec/ims/settings/ImsProfile;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 738
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 741
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 742
    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 743
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    .line 744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterserviceFbe: rcsonly="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr-Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 746
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 748
    :cond_1
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v1, p0, p2

    .line 749
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getAllByNameWithThread(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1026
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    .line 1027
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v2

    .line 1030
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x1388

    add-long v7, v0, v3

    .line 1031
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 1032
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1033
    new-instance v10, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;

    move-object v0, v10

    move v1, v6

    move-object v3, p1

    move-object v4, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;-><init>(ILandroid/net/Network;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1057
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1059
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-gez v1, :cond_2

    .line 1060
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1064
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1065
    :try_start_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v0, "RegiMgr-Utils"

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllAddressByName: current result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :cond_0
    const-wide/16 v1, 0x12c

    .line 1070
    :try_start_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    :try_start_3
    const-string v1, "RegiMgr-Utils"

    const-string v2, "getAllAddressByName: wait failed"

    .line 1072
    invoke-static {v1, v6, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1075
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_1
    const-string p0, "RegiMgr-Utils"

    const-string v1, "getAllAddressByName: query failed"

    .line 1061
    invoke-static {p0, v6, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1078
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string p0, "RegiMgr-Utils"

    const-string v0, "getAllAddressByName time out or failed"

    .line 1079
    invoke-static {p0, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1080
    new-instance p0, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot resolve host "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    const-string p0, "RegiMgr-Utils"

    const-string v0, "getAllAddressByName: Unknown Host"

    .line 1082
    invoke-static {p0, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1083
    new-instance p0, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot resolve host "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getHomeNetworkDomain(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 4

    .line 332
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-interface {p3, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object p0

    .line 335
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHomeNetworkDomain: mno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " EFDOMAIN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " domain from profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Utils"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne p3, v0, :cond_2

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 342
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    if-eqz v2, :cond_a

    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 343
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 356
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_4

    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p0

    .line 361
    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4, p1, p2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object p4

    .line 362
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, p4

    goto :goto_3

    .line 346
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 347
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "@"

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_8

    const-string/jumbo v3, "sip"

    .line 348
    invoke-virtual {p4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 349
    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_9
    const/4 p0, 0x0

    .line 367
    :cond_a
    :goto_3
    invoke-static {p3, p1, p5, p2, p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isDerivedDomainFromImsiRequired(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getHomeNetworkDomain: domain="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "[^\\x20-\\x7E]"

    const-string p2, ""

    .line 372
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getHostAddressWithThread(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 964
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v8

    .line 965
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v2

    .line 968
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 969
    new-instance v9, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda2;

    move-object v0, v9

    move v1, v8

    move-object v3, p3

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda2;-><init>(ILandroid/net/Network;Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 992
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 993
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/16 v0, 0x3c

    .line 995
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 996
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 997
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 p1, 0x2710

    .line 998
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p0, "RegiMgr-Utils"

    const-string p1, "getHostAddressWithThread: Unknown Host"

    .line 1000
    invoke-static {p0, v8, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1001
    new-instance p0, Ljava/net/UnknownHostException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot resolve host "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getImMsgTech(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;
    .locals 2

    const-string v0, "IM"

    if-nez p0, :cond_0

    return-object v0

    .line 1328
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1329
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 3

    .line 122
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "RegiMgr-Utils"

    const-string v2, "getNetworkEvent is not exist. Return null.."

    .line 124
    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected static getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    .locals 2

    if-ltz p0, :cond_1

    .line 560
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    return-object p0

    .line 561
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPendingRegistrationInternal : Invalid phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr-Utils"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I
    .locals 3

    .line 590
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 591
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    if-nez v1, :cond_0

    .line 592
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 594
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneIdForStartConnectivity: task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " phoneId: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RegiMgr-Utils"

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method static getPriorityRegiedTask(ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            ">;"
        }
    .end annotation

    .line 615
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPriorityRegiedTask : isPriority  High? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 621
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 623
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 624
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 627
    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v4, v5, v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 628
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v4

    .line 629
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 630
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p0, :cond_3

    .line 632
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 633
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 636
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_4

    .line 637
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 638
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_4
    :goto_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_1

    if-eqz p0, :cond_1

    .line 646
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Profile is in = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 647
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-eq v4, v6, :cond_1

    .line 648
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 649
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    const-string v5, "Priority task is pending"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 650
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method static getPrivateUserIdentity(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 5

    .line 252
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "impi="

    const-string v3, "RegiMgr-Utils"

    if-nez v1, :cond_0

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p2, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v4, ""

    if-ne v0, v1, :cond_4

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->isCCT(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 260
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 261
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    if-gez v0, :cond_1

    return-object v4

    .line 265
    :cond_1
    invoke-interface {p3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {p0, p5, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->IsNonDirectRoamingCase(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v2

    const-string v4, "@"

    if-eqz v2, :cond_3

    .line 268
    invoke-interface {p3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 270
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_2
    const-string v0, "IMPI from ISIM is empty"

    .line 275
    invoke-static {v3, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p5}, Lcom/sec/internal/ims/core/RegistrationUtils;->getHomeNetworkDomain(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "imsiBasedImpi="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_4
    if-nez p5, :cond_5

    return-object v4

    .line 289
    :cond_5
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 290
    invoke-static {p2, p3, p5, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPrivateUserIdentityfromIsim(ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 292
    :cond_6
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object p0

    .line 295
    :goto_0
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 296
    invoke-interface {p4, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsPrivateUserIdentity(Ljava/lang/String;Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object p0

    .line 299
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method static getPrivateUserIdentityfromIsim(ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 6

    .line 211
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 215
    :cond_0
    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/Mno;->CABLE_PANAMA:Lcom/sec/internal/constants/Mno;

    sget-object p1, Lcom/sec/internal/constants/Mno;->ORANGE_DOMINICANA:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->ALE_ECUADOR:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CABLE_BARBADOS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CABLE_JAMAICA:Lcom/sec/internal/constants/Mno;

    filled-new-array {p0, p1, v0, v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 246
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 223
    :cond_3
    :goto_0
    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz v2, :cond_5

    .line 227
    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 228
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 235
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrivateUserIdentity: MNO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", found impu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", impi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr-Utils"

    invoke-static {v3, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_6

    if-nez v0, :cond_8

    .line 238
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 242
    :cond_7
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object p0

    :goto_3
    move-object v1, p0

    :cond_8
    :goto_4
    return-object v1
.end method

.method static getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 3

    .line 84
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sec/ims/settings/ImsProfile;

    .line 87
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object p0

    .line 91
    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 92
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/ims/settings/ImsProfile;

    .line 94
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-array p0, v1, [Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method static getPublicUserIdentity(Lcom/sec/ims/settings/ImsProfile;ILjava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 6

    const-string v0, "RegiMgr-Utils"

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPublicUserIdentity: impu from ImsProfile - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p0, :cond_1

    .line 188
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPublicUserIdentity: impu from autoconfig - "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object p2

    .line 197
    :cond_1
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromSim()Ljava/lang/String;

    move-result-object p2

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPublicUserIdentity: impu from sim - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 202
    sget-object v0, Lcom/sec/internal/constants/Mno;->CABLE_PANAMA:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_DOMINICANA:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ALE_ECUADOR:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CABLE_BARBADOS:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->CABLE_JAMAICA:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONEPNG_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 203
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method static getRegistrationInfo(II)Lcom/sec/ims/ImsRegistration;
    .locals 1

    if-gez p1, :cond_0

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid profileId : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr-Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method static getRegistrationInfoByPhoneId(I[Lcom/sec/ims/ImsRegistration;)[Lcom/sec/ims/ImsRegistration;
    .locals 6

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 108
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 109
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-array p0, v2, [Lcom/sec/ims/ImsRegistration;

    .line 117
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method private static getUpOmaEnablerVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1344
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpTransitionProfile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "OMA2.0"

    goto :goto_0

    .line 1346
    :cond_0
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp10Profile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "OMA2.1"

    goto :goto_0

    .line 1348
    :cond_1
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp2Profile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "OMA2.2"

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static handleExceptionalMnoName(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 3

    const-string v0, "handleExceptionalMnoName:"

    const-string v1, "RegiMgr-Utils"

    .line 660
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    .line 666
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v2, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":softphone"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 668
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkAusEmergencyCall(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "gsm.operator.numeric"

    const-string p2, "00101"

    .line 669
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 670
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExceptionalMnoName: nwOperator: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "50502"

    .line 671
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 672
    sget-object p0, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string p1, "50501"

    .line 673
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "50571"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "50572"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "50503"

    .line 675
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "50506"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "50514"

    .line 677
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    .line 676
    :cond_5
    :goto_0
    sget-object p0, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 674
    :cond_6
    :goto_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_2
    return-object v0
.end method

.method private static handleHostAddressResponse(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegistrationManagerHandler;",
            "Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHostAddressWithThread: ret "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Utils"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1008
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 1010
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    .line 1011
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    :cond_0
    const/16 v0, 0x3c

    .line 1013
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1014
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    :cond_1
    invoke-static {p4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1017
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 1018
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 1019
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_2
    return-void
.end method

.method static hasLoadedProfile(I)Z
    .locals 2

    const-string v0, "RegiMgr-Utils"

    const-string v1, "hasLoadedProfile:"

    .line 499
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 500
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method static hasRcsService(ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 2

    .line 146
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v0, :cond_2

    .line 152
    sget-object p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p1, p0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result p0

    return p0

    .line 154
    :cond_2
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p1, p0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result p0

    return p0
.end method

.method static hasRcsService(ILcom/sec/ims/settings/ImsProfile;Z)Z
    .locals 2

    .line 159
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 161
    sget-object p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p1, p0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result p0

    return p0

    .line 163
    :cond_1
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasRcsService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method static hasSimMobilityProfile(I)Z
    .locals 1

    .line 530
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 531
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static hasVoLteSim(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Z
    .locals 5

    .line 441
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const-string v1, "RegiMgr-Utils"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 447
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 448
    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "hasVoLteSim - no matched profile with SIM"

    .line 449
    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 454
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 455
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isNotNeededCheckPdnFail(Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 460
    :cond_2
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 461
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNonVoLteSimByPdnFail()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 462
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    const-string p1, "hasVoLteSim - Pdn rejected by network"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 468
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    filled-new-array {p1, p2}, [Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 469
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object p1

    .line 470
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getEntitlementForVoLte(I)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getVoLteEntitlementStatus(I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "hasVoLteSim - Entitlement is not ready"

    .line 471
    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 477
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    const-string/jumbo p2, "volte_setting_dim_by_vops"

    .line 478
    invoke-static {p0, p2, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 479
    iget-object p2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object p3, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne p2, p3, :cond_6

    iget p2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 480
    iget p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hasVoLteSim - VoPS not supported in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_6
    :goto_0
    return v4

    :cond_7
    :goto_1
    const-string p1, "hasVoLteSim - no mno or no task"

    .line 443
    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method static hasVolteService(ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 138
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 142
    :cond_0
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p1, p0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result p0

    return p0
.end method

.method public static ignoreSendDeregister(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/RegisterTask;I)Z
    .locals 6

    const/16 v0, 0xb

    const-string v1, "RegiMgr-Utils"

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    .line 783
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    if-eq v4, v0, :cond_1

    :cond_0
    const/4 v4, 0x4

    if-ne p3, v4, :cond_2

    .line 784
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    if-eq v5, v0, :cond_2

    .line 785
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not matched pdn type. reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",pdnType: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/16 v0, 0x7c

    if-ne p3, v0, :cond_3

    .line 790
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 791
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignore Epdg deregister due to not support epdg profile : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 796
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eq p3, v4, :cond_4

    if-eq p3, v3, :cond_4

    if-ne p3, v2, :cond_5

    :cond_4
    const-string/jumbo p0, "sendDeregister : 4 or 1: RCS not needed"

    .line 800
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 804
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    .line 805
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 806
    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_7

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-nez p0, :cond_7

    if-eq p3, v4, :cond_6

    if-ne p3, v3, :cond_7

    :cond_6
    const-string/jumbo p0, "sendDeregister : DCM doesn\'t need to handle this on 3G"

    .line 809
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    const/16 p0, 0x8f

    if-ne p3, p0, :cond_9

    .line 814
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "FORCE SMS PUSH"

    .line 815
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    return v2

    :cond_9
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static initRttMode(Landroid/content/Context;)V
    .locals 6

    const-string v0, "initRttMode"

    const-string v1, "RegiMgr-Utils"

    .line 765
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 766
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 768
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 770
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 771
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 772
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 773
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRttMode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 774
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isRttModeOnFromCallSettings(Landroid/content/Context;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRTTMode(Ljava/lang/Boolean;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static isCdmConfigured(Lcom/sec/internal/interfaces/ims/IImsFramework;I)Z
    .locals 1

    .line 916
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 917
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->isConfigured(I)Z

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

.method static isCmcPrimaryType(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method static isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 611
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isCmcSecondaryType(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static isDelayDeRegForNonADSOnFlightModeChanged(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 6

    .line 709
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ro.boot.hardware"

    const-string v2, ""

    .line 713
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 718
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 722
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 723
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 729
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 730
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    const-string v0, "isDelayDeRegForNonADSOnFlightModeChanged : true"

    const-string v1, "RegiMgr-Utils"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_5
    return v1
.end method

.method private static isDerivedDomainFromImsiRequired(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 377
    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 378
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->H3G_DK:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->METEOR_IRELAND:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v3, v4, v5, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 379
    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "jibe"

    .line 380
    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    if-eqz p2, :cond_4

    .line 381
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    move p3, v1

    goto :goto_0

    :cond_4
    move p3, v2

    .line 387
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    sget-object p1, Lcom/sec/internal/constants/Mno;->ALE_ECUADOR:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_7

    sget-object p1, Lcom/sec/internal/constants/Mno;->CABLE_BARBADOS:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_7

    sget-object p1, Lcom/sec/internal/constants/Mno;->CABLE_JAMAICA:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_7

    sget-object p1, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_7

    sget-object p1, Lcom/sec/internal/constants/Mno;->MASCOM_BOTSWANA:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, p3

    goto :goto_2

    .line 391
    :cond_7
    :goto_1
    sget-object p1, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_8

    .line 392
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p1, "ims.taiwanmobile.com"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    if-eqz v1, :cond_c

    if-eqz p2, :cond_a

    .line 400
    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_9

    .line 401
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getHighestPriorityEhplmn()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 403
    :cond_9
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_a
    const/4 p0, 0x0

    .line 407
    :goto_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p0, ""

    return-object p0

    .line 411
    :cond_b
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p2, 0x3

    .line 412
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "ims.mnc%03d.mcc%03d.3gppnetwork.org"

    .line 411
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getHomeNetworkDomain: Use derived domain - operator "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr-Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object p4
.end method

.method private static isNotNeededCheckPdnFail(Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/constants/Mno;)Z
    .locals 1

    .line 491
    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_1

    .line 492
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string/jumbo p1, "simyo"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static isRcsRegistered(I[Lcom/sec/ims/ImsRegistration;)Z
    .locals 3

    .line 1250
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getRegistrationInfoByPhoneId(I[Lcom/sec/ims/ImsRegistration;)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 1253
    array-length v0, p0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1254
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method static isSatisfiedCarrierRequirement(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;IZ)Z
    .locals 3

    .line 892
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    if-ne p3, v2, :cond_0

    if-nez p4, :cond_0

    return v1

    .line 898
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSupportRcsAcrossSalesCode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 900
    sget-object p1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p1, :cond_2

    .line 901
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    .line 902
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p1, :cond_3

    .line 903
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 904
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p2, p1, :cond_4

    .line 905
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_4
    :goto_0
    move p1, v2

    :goto_1
    if-nez p1, :cond_5

    const-string p1, "RegiMgr-Utils"

    const-string p2, "buildTask: Not support device. skip RCS Profile."

    .line 908
    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_5
    return v2
.end method

.method private static synthetic lambda$getAllByNameWithThread$2(ILandroid/net/Network;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    :try_start_0
    const-string v0, "RegiMgr-Utils"

    const-string v1, "getAllAddressByName: start runnable"

    .line 1035
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1038
    invoke-virtual {p1, p2}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    goto :goto_0

    .line 1040
    :cond_0
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 1042
    array-length p2, p1

    if-lez p2, :cond_3

    .line 1043
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1044
    :try_start_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-lez p2, :cond_1

    monitor-exit p3

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 1045
    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 1046
    aget-object v0, p1, p2

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v0, "RegiMgr-Utils"

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllAddressByName: getAllByName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1049
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 1050
    monitor-exit p3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    const/4 p1, 0x1

    .line 1053
    invoke-virtual {p4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1054
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private static synthetic lambda$getHostAddressWithThread$1(ILandroid/net/Network;Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    :try_start_0
    const-string v0, "RegiMgr-Utils"

    const-string v1, "getHostAddressWithThread: start runnable"

    .line 971
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    .line 974
    invoke-virtual {p1, p2}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    goto :goto_0

    .line 976
    :cond_0
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 978
    array-length p2, p1

    if-lez p2, :cond_3

    .line 979
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 980
    :try_start_1
    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 981
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 983
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 984
    invoke-static {p4, p5, p6, p0, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->handleHostAddressResponse(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILjava/util/List;)V

    .line 986
    :cond_2
    monitor-exit p3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 989
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private static synthetic lambda$updateImsIcon$0(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0

    .line 758
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p0

    if-nez p0, :cond_0

    .line 759
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_0
    return-void
.end method

.method static needToNotifyImsReady(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 2

    .line 698
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 701
    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcSecondaryType(I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 702
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 703
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    return v1

    :cond_3
    return v0
.end method

.method static needToSkipTryRegister(Lcom/sec/internal/ims/core/RegisterTask;ZZZLcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Z)Z
    .locals 5

    .line 1201
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p2

    .line 1203
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    return v1

    .line 1211
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    const-string v0, "RegiMgr-Utils"

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "Deregistering is not completed"

    .line 1212
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1216
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result p1

    if-nez p1, :cond_3

    .line 1217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "tryRegister: profile is disabled. "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1221
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p0, "tryRegister: suspened"

    .line 1222
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1226
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, p3, :cond_5

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p6, :cond_5

    .line 1227
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p1

    invoke-interface {p4, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p0, "tryRegister: emergency call is ongoing on other slot"

    .line 1228
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1232
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEurNonRjil(Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1233
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    invoke-interface {p4, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    if-eqz p0, :cond_6

    .line 1234
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/core/PdnController;->getDataState(I)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_6

    const-string/jumbo p0, "tryRegister: suspended because other slot is on calling "

    .line 1235
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method static pendingHasEmergencyTask(ILcom/sec/internal/constants/Mno;)Z
    .locals 2

    .line 541
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 545
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_1

    return v0

    .line 550
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 551
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method static replaceEnablerPlaceholderWithEnablerVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;
    .locals 2

    .line 1302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[ENABLER]"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "rcs_up_profile"

    const-string v1, ""

    .line 1304
    invoke-static {p3, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1303
    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getUpOmaEnablerVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1305
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1306
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/sec/internal/ims/core/RegistrationUtils;->getImMsgTech(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "-client/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p1, "IM-client/OMA1.0"

    .line 1308
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p0, "RegiMgr-Utils"

    const-string/jumbo p1, "replaceEnablerPlaceholderWithEnablerVersion: Cannot specify omaEnablerVersion for given rcs_profile and rcs_up_profile. Set enabler to IM-client/OMA1.0 as a default."

    .line 1309
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p2
.end method

.method static replaceProfilesOnTask(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 4

    .line 685
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "ReplaceProfilesOnTask:"

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 688
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 690
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 691
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 825
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 826
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 827
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v2

    .line 828
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "RegiMgr-Utils"

    if-eqz v2, :cond_5

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 830
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    if-eq v2, v6, :cond_4

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x5

    if-ne v2, p2, :cond_2

    .line 842
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfViaOmadm(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_2

    :cond_2
    const/4 p0, 0x2

    if-ne v2, p0, :cond_3

    .line 844
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v3

    .line 845
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_7

    .line 846
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPcscfAddress: No P-CSCF address found in profile "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/4 p0, 0x1

    if-ne v2, p0, :cond_7

    .line 850
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 840
    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    invoke-interface {p2, p1, p0}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsPcscfAddress(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 831
    :cond_5
    :goto_1
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object v3

    .line 832
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq p1, p2, :cond_6

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_7

    :cond_6
    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "getPcscfAddresses: pcscfList invalid call retryDNSQuery"

    .line 833
    invoke-static {v4, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 834
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->retryDNSQuery()V

    .line 835
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p0, :cond_7

    .line 836
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v3

    .line 852
    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPcscfAddress: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method static retrievePcscfViaOmadm(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Lcom/sec/internal/ims/core/PdnController;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 857
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 858
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 863
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object p0

    .line 866
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 867
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPcscfAddress: No P-CSCF address found in PCO "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 868
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 870
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 871
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VoLTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 872
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object p0

    .line 873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPcscfAddress: P-CSCF address found in VoLTE profile "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 880
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 881
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 885
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method static saveRegisteredImpu(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 3

    .line 421
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    const-string/jumbo v1, "saveRegisteredImpu:"

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "SIM not Loaded"

    .line 426
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "content://com.sec.ims.settings/impu"

    .line 429
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 430
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p2

    .line 432
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "imsi"

    .line 433
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "impu"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "timestamp"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method static selectPdnType(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 2

    .line 568
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const/16 p0, 0x12

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 572
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    const/4 p0, 0x5

    .line 576
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectPdnType: rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pdn="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiMgr-Utils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method static sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    const-string/jumbo v0, "sendEmergencyRegistrationFailed"

    const-string v1, "RegiMgr-Utils"

    .line 599
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 602
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 604
    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setResultMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "sendEmergencyRegistrationFailed, mResult is NULL"

    .line 606
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static setVoLTESupportProperty(ZI)V
    .locals 2

    .line 509
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_3

    .line 514
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object p0

    .line 515
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    const-string/jumbo v1, "smsip"

    .line 516
    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mmtel-video"

    .line 517
    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const-string p0, "1"

    goto :goto_0

    :cond_3
    const-string p0, "0"

    .line 524
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoLTESupportProperty: volteSupported ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Utils"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.ims.supportmmtel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static skipReRegi(Lcom/sec/internal/ims/core/RegisterTask;II)Z
    .locals 2

    .line 957
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getReregiOnRatChange()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getReregiOnRatChange()I

    move-result p0

    if-ne p0, v1, :cond_0

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 2

    .line 168
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static updateImsIcon(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    .line 757
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
