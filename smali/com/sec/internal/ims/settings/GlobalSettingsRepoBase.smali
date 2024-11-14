.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
.super Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
.source "GlobalSettingsRepoBase.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsSimMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;-><init>()V

    .line 72
    const-class v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    .line 80
    iput p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    .line 81
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0xc8

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 82
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    .line 83
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mImsSimMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    return-void
.end method

.method private finishResetVoiceCallType(ILjava/lang/String;)V
    .locals 4

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset_voicecall_type_done_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v0, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 712
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishResetVoiceCallType: Mno("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private isNotFinishResetVoiceCallType(ILjava/lang/String;)Z
    .locals 4

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset_voicecall_type_done_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 719
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotFinishResetVoiceCallType: Mno("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "):"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p2, v0, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method private readSettings(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 146
    array-length v2, p2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    .line 147
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 149
    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " No matched key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    :try_start_1
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 159
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Boolean type is not supported in globalSettings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected cleanUp()V
    .locals 0

    .line 0
    return-void
.end method

.method public dump()V
    .locals 6

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1052
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "loaded"

    .line 1055
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1056
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v1, "imsi"

    .line 1057
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v3, "\nLast values of GlobalSettings:"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1061
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1062
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1063
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1066
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getGlobalGcEnabled()Z
    .locals 4

    .line 1023
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v1, "globalgcenabled"

    const/4 v2, 0x0

    const-string v3, "globalsettings"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getPrevGcEnabled()Z
    .locals 3

    .line 741
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "prevGcEnabled"

    .line 743
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getPreviousCscImsSettingType(Landroid/content/SharedPreferences;)I
    .locals 1

    const-string p0, "cscimssettingtype"

    const/4 v0, -0x1

    .line 992
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getPreviousGcfMode(Landroid/content/SharedPreferences;)Z
    .locals 1

    const-string p0, "gcfmode"

    const/4 v0, 0x0

    .line 996
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getPreviousHasSim(Landroid/content/SharedPreferences;)Z
    .locals 1

    const-string p0, "hassim"

    const/4 v0, 0x0

    .line 988
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getPreviousImsi(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1

    const-string p0, "imsi"

    const-string v0, ""

    .line 1012
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousMno()Ljava/lang/String;
    .locals 4

    .line 1017
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v1, "mnoname"

    const-string v2, ""

    const-string v3, "globalsettings"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1

    const-string p0, "mnoname"

    const-string v0, ""

    .line 1000
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreviousMvno(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1

    const-string p0, "mvnoname"

    const-string v0, ""

    .line 1004
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreviousNwCode(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1

    .line 984
    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "nwcode"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreviousNwName(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1

    const-string p0, "NetworkName"

    const-string v0, ""

    .line 1008
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initNeedToCheckResetSetting()V
    .locals 1

    const/4 v0, 0x0

    .line 728
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mVersionUpdated:Z

    return-void
.end method

.method protected initRcsUserSetting(II)V
    .locals 4

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const/4 v1, -0x3

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    .line 766
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simSlot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] initRcsUserSetting: system ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], sp ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], default ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 773
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "GLB:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v1, 0x10020006

    invoke-static {v1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eq v0, p1, :cond_2

    .line 774
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isRcsUserSettingValueAllowed(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 778
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p2, p1, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public isLoaded()Z
    .locals 4

    .line 325
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v1, "loaded"

    const/4 v2, 0x0

    const-string v3, "globalsettings"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected isNeedToBeSetViLTE(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 805
    iget p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->needResetCallSettingBySim(I)Z

    move-result p1

    const/4 v0, 0x1

    const-string/jumbo v1, "simSlot["

    if-eqz p1, :cond_0

    .line 806
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] reset vt call settings db by simcard change"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :goto_0
    move p1, v0

    goto :goto_1

    .line 808
    :cond_0
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 809
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] reset video call settings db by simcard change"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 813
    :goto_1
    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 815
    iget-object p3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 816
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    .line 815
    invoke-static {p3, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p3

    .line 817
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] videocall_type_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": ["

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result p2

    if-nez p2, :cond_2

    .line 820
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] NOT Temporal SIM swapped: Set Video DB - "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, -0x1

    if-eq p3, p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, p1

    :goto_2
    return v0
.end method

.method protected isNeedToBeSetVoLTE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 836
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->needResetCallSettingBySim(I)Z

    move-result v0

    const-string v1, "] reset voice call settings db by simcard change"

    const-string/jumbo v3, "simSlot["

    if-eqz v0, :cond_1

    .line 838
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 841
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected isRcsUserSettingValueAllowed(I)Z
    .locals 1

    .line 0
    const/4 p0, -0x1

    const/4 v0, 0x1

    if-eq p1, p0, :cond_1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method protected isVersionUpdated()Z
    .locals 6

    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, ""

    .line 1028
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.official_cscver"

    .line 1029
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1030
    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v4, "globalsettings"

    const-string v5, "buildinfo"

    invoke-static {v3, p0, v4, v5, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public load()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 211
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load: initial with OMCNW_CODE("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Mno="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    .line 215
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalSettingsFromJson(ZLjava/lang/String;ILandroid/content/ContentValues;)V

    .line 217
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadByDynamicConfig()V
    .locals 11

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    if-eqz v1, :cond_3

    const-string v2, "hassim"

    .line 303
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 305
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    const-string v3, "globalgcenabled"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 309
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    const-string v4, "mnoname"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 312
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    const-string v4, "mvnoname"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 313
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    const-string v4, "imsSwitchType"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 318
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalSettingsFromJson(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 319
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalGcSettings(Z)V

    .line 321
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected loadGlobalGcSettings(Z)V
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadGlobalGcSettings isGlobalGcEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "globalgcsettings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_b

    .line 230
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v2, " getResources : globalsettings.json"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x7f060000

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :try_start_1
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 236
    :try_start_2
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 237
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :try_start_3
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 243
    :cond_0
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v1, "globalsetting"

    .line 244
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 245
    invoke-static {p1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v0, "load: parse failed."

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 250
    :cond_1
    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 251
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 252
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 253
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v4, "mnoname"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GoogleGC_ALL"

    .line 254
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v2, "loadGlobalGcSettings GoogleGC_ALL found"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v3

    .line 262
    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 263
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v0, "loadGlobalGcSettings GoogleGC_ALL is not exist"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 267
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz p1, :cond_5

    .line 268
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 271
    :cond_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 277
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "save : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_6

    .line 279
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 280
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 282
    :cond_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 284
    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "1"

    .line 285
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_8
    const-string v1, "0"

    .line 287
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 290
    :cond_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 234
    :try_start_5
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_a

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    .line 296
    :cond_b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public loadGlobalSettingsFromJson(ZLjava/lang/String;ILandroid/content/ContentValues;)V
    .locals 6

    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalSettingsFromJson(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V

    return-void
.end method

.method protected loadGlobalSettingsFromJson(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 336
    iget-object v6, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadGlobalSettingsFromJson: from resource: mno:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "mvno:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v3, :cond_1a

    .line 338
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_d

    .line 342
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 346
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 348
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v10, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v3

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    .line 359
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v12, 0x7f060000

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 360
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 361
    new-instance v12, Lcom/google/gson/stream/JsonReader;

    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v12, v13}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 362
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v13

    .line 363
    invoke-virtual {v12}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_2

    .line 370
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 372
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 377
    :cond_2
    :goto_1
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v11, "defaultsetting"

    .line 379
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 380
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 381
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v2, "load: No default setting."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    const-string v12, "nohitsetting"

    .line 385
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    .line 386
    iget-object v13, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v13, :cond_4

    .line 387
    invoke-virtual {v13, v12}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyNohitSettingUpdate(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v12

    .line 388
    iget-object v13, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v13, v11}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyDefaultSettingUpdate(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 391
    :cond_4
    sget-object v13, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 393
    sget-object v14, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    const-string v15, "mnoname"

    if-eq v6, v14, :cond_12

    const-string v14, "globalsetting"

    .line 394
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 395
    invoke-static {v0}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 396
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v2, "load: parse failed."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 400
    :cond_5
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v14, v13

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v9, " found"

    if-eqz v16, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/gson/JsonElement;

    .line 401
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v17

    .line 402
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-virtual {v8, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    if-eqz v10, :cond_7

    .line 404
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 407
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v13, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGlobalSettings - mvnoname on json:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v13, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 409
    :cond_6
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v14, v17

    goto :goto_4

    .line 414
    :cond_7
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 417
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v2, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadGlobalSettings - mnoname on json:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    move-object/from16 v13, v17

    goto :goto_5

    :cond_8
    :goto_4
    move/from16 v2, p1

    move-object/from16 v5, p5

    goto :goto_2

    .line 422
    :cond_9
    :goto_5
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_e

    .line 423
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 424
    invoke-virtual {v0, v15, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v5, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v5, :cond_a

    .line 429
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 432
    :cond_a
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 433
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->size()I

    move-result v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_d

    .line 434
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v5, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v7, "loadGlobalSettings - not matched"

    invoke-static {v0, v5, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v10, :cond_c

    .line 435
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_c

    .line 436
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v5, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadGlobalSettings - primary mnoname on json:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-ne v4, v2, :cond_b

    .line 441
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mImsSimMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    iget v2, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v0, v14, v2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->overrideGlobalSettingsForSimMobilityUpdateOnDemand(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    move-object v12, v0

    goto :goto_6

    :cond_b
    move-object v12, v14

    .line 445
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v0, :cond_11

    .line 446
    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v12

    goto :goto_7

    .line 450
    :cond_c
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v2, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v5, "load: No matched setting load default setting"

    invoke-static {v0, v2, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    :cond_d
    move-object v12, v0

    goto :goto_7

    :cond_e
    if-ne v4, v2, :cond_f

    .line 457
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mImsSimMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    iget v2, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v0, v13, v2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->overrideGlobalSettingsForSimMobilityUpdateOnDemand(Lcom/google/gson/JsonElement;I)Lcom/google/gson/JsonElement;

    move-result-object v13

    .line 460
    :cond_f
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v0, :cond_10

    .line 461
    invoke-virtual {v0, v13}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v12

    goto :goto_7

    :cond_10
    move-object v12, v13

    .line 466
    :cond_11
    :goto_7
    invoke-static {v11, v12}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_8

    .line 469
    :cond_12
    invoke-static {v11, v12}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 471
    :goto_8
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 473
    iget v2, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "XAS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 474
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->overwriteXasGlobalSettings(Lcom/google/gson/JsonObject;)V

    .line 477
    :cond_13
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOmcCode()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 478
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->overwriteJpnDataOnlyGlobalSettings(Lcom/google/gson/JsonObject;)V

    .line 482
    :cond_14
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->save(Lcom/google/gson/JsonObject;)V

    .line 485
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v2, :cond_15

    move/from16 v2, p1

    move-object/from16 v5, p5

    if-eqz v2, :cond_16

    .line 486
    invoke-virtual {v1, v0, v5}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setInitialSettings(Lcom/google/gson/JsonObject;Landroid/content/ContentValues;)V

    goto :goto_9

    :cond_15
    move/from16 v2, p1

    move-object/from16 v5, p5

    .line 489
    :cond_16
    :goto_9
    iget v6, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v7, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v8, "globalsettings"

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v9}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 490
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "loaded"

    const/4 v8, 0x1

    .line 491
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    iget v7, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v7}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nwcode"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 493
    invoke-interface {v6, v15, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "cscimssettingtype"

    .line 494
    invoke-interface {v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "hassim"

    .line 495
    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "gcfmode"

    .line 497
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v3

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "buildinfo"

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->saveBuildInfo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "imsi"

    .line 499
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 501
    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 503
    :cond_17
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 506
    iget-object v2, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v2, v1, v0}, Lcom/sec/internal/ims/util/CarrierConfigUtil;->overrideConfigFromGlobalSettings(Landroid/content/Context;ILcom/google/gson/JsonObject;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :catch_1
    move-exception v0

    .line 365
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_18

    .line 370
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 372
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_a
    return-void

    :goto_b
    if-eqz v11, :cond_19

    .line 370
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 372
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 375
    :cond_19
    :goto_c
    throw v1

    .line 339
    :cond_1a
    :goto_d
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v2, "load: globalSettings is not identified."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected logMnoInfo(Landroid/content/ContentValues;)V
    .locals 3

    .line 571
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string p1, "imsi"

    .line 573
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 576
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] updateMno: mnoInfo:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method protected needResetVolteAsDefault(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 697
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ALWAYS"

    .line 698
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    return p4

    :cond_0
    const-string p2, "ONETIME"

    .line 701
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    .line 702
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isNotFinishResetVoiceCallType(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 703
    iget p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->finishResetVoiceCallType(ILjava/lang/String;)V

    return p4

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected needToCheckResetSetting()Z
    .locals 0

    .line 724
    iget-boolean p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mVersionUpdated:Z

    return p0
.end method

.method protected overwriteJpnDataOnlyGlobalSettings(Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 517
    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "overwriteJpnDataOnlyGlobalSettings"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "voice_domain_pref_eutran"

    const-string v0, "3"

    .line 518
    invoke-virtual {p1, p0, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected overwriteXasGlobalSettings(Lcom/google/gson/JsonObject;)V
    .locals 1

    const-string/jumbo p0, "voice_domain_pref_eutran"

    const-string v0, "3"

    .line 511
    invoke-virtual {p1, p0, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "emergency_domain_setting"

    const-string v0, "PS"

    .line 512
    invoke-virtual {p1, p0, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "ss_domain_setting"

    const-string/jumbo v0, "ps_only_psregied"

    .line 513
    invoke-virtual {p1, p0, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isLoaded()Z

    move-result p2

    if-nez p2, :cond_0

    .line 174
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p3, "query: globalsettings not loaded. loading now."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->load()V

    :cond_0
    const-string p2, "globalsettings"

    .line 178
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readSettings(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 179
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 180
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getGlobalGcEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "globalgcsettings"

    .line 181
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readSettings(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "block_regi_on_invalid_isim"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "voice_domain_pref_eutran"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "show_regi_info_in_sec_settings"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "mnoname"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "query: Don\'t override some values"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_4
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 196
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method protected readRcsDefaultEnabled(Z)I
    .locals 3

    const-string v0, "-1"

    const-string/jumbo v1, "rcs_default_enabled"

    if-eqz p1, :cond_0

    .line 1082
    iget p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "globalgcsettings"

    invoke-static {p1, p0, v2, v1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1085
    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    invoke-static {p1, p0, v2, v1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected readVolteDefaultEnabled()I
    .locals 4

    .line 1071
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "volte_domestic_default_enabled"

    const-string v2, "-1"

    const-string v3, "globalsettings"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected requiredForceVolteDefaultEnabled()Ljava/lang/String;
    .locals 4

    .line 1076
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v1, "force_volte_default_enabled"

    const-string v2, ""

    const-string v3, "globalsettings"

    invoke-static {v0, p0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 969
    monitor-exit v0

    return-void

    .line 971
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 973
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 974
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v1, "loaded"

    .line 975
    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 976
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 977
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetUserSettingAsDefault(ZZZ)V
    .locals 3

    const-string v0, ",SET:"

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 851
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p1, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 852
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v2, 0x10020000

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 856
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p1, v1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    .line 857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x10020001

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 861
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p1, v1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x10020005

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected save(Landroid/content/ContentValues;)V
    .locals 6

    .line 124
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "null"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 136
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected save(Lcom/google/gson/JsonObject;)V
    .locals 7

    .line 93
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 101
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "save : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, "null"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    .line 109
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    const-string v1, "0"

    .line 111
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 104
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 120
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected saveBuildInfo()Ljava/lang/String;
    .locals 2

    const-string/jumbo p0, "ro.build.PDA"

    const-string v0, ""

    .line 1042
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "ril.official_cscver"

    .line 1043
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected setInitialSettings(Lcom/google/gson/JsonObject;Landroid/content/ContentValues;)V
    .locals 12

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    const-string v1, ", SIMINFO:"

    const-string v3, ",INITIAL:"

    const-string v4, "1"

    const-string v5, "0"

    const-string v6, "] from global settings as initial"

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "volte_domestic_default_enabled"

    .line 527
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 530
    iget-object v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v7, v0, v8}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    if-nez v0, :cond_0

    move-object v7, v4

    goto :goto_0

    :cond_0
    move-object v7, v5

    .line 537
    :goto_0
    iget v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v8

    if-eq v8, v2, :cond_1

    const-string/jumbo v9, "volte_vt_enabled"

    .line 539
    invoke-static {v8, v9, v7}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_1
    iget-object v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v9, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set voicecall_type to ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v7, 0x10020003

    invoke-static {v7, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v0, v2, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_5

    const-string/jumbo v0, "vt_default_enabled"

    .line 546
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 548
    iget-object v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v7, v0, v8}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 552
    :goto_1
    iget v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v5

    if-eq v5, v2, :cond_4

    const-string/jumbo v7, "vt_ims_enabled"

    .line 554
    invoke-static {v5, v7, v4}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set videocall_type to ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x10020004

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_5
    const-string v0, "globalgcenabled"

    const/4 v1, 0x0

    .line 561
    invoke-static {p2, v0, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_6

    if-nez p2, :cond_6

    const-string/jumbo p2, "rcs_default_enabled"

    .line 563
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    .line 564
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p2, p1, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 565
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set rcs_user_setting to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",SET INITIAL RCS SETTING:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x10020006

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected setIsGcEnabledChange(Z)V
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsGcEnabledChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 749
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 751
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isGcEnabledChange"

    .line 752
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 753
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected setPrevGcEnabled(Z)V
    .locals 4

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPrevGcEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 733
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 735
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "prevGcEnabled"

    .line 736
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected setSettingsFromSp(ZIZIZI)V
    .locals 2

    const-string v0, ",SET:"

    if-eqz p1, :cond_0

    .line 869
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p1, p2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 870
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x10020000

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 874
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p1, p4, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    .line 875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x10020001

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 879
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p1, p6, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",SET RCS DB:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x10020005

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public update(Landroid/content/ContentValues;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->save(Landroid/content/ContentValues;)V

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateMno(Landroid/content/ContentValues;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 587
    iget-object v1, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "hassim"

    const/4 v9, 0x0

    .line 589
    invoke-static {v8, v2, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v10

    const-string v2, "mnoname"

    .line 590
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "mvnoname"

    const-string v3, ""

    .line 591
    invoke-static {v8, v2, v3}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "imsSwitchType"

    .line 592
    invoke-static {v8, v2, v9}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v13

    const-string v2, "imsi"

    .line 593
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 594
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 596
    iget-object v1, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simSlot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] updateMno: hasSIM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", imsSwitchType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->logMnoInfo(Landroid/content/ContentValues;)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPrevGcEnabled()Z

    move-result v1

    const-string v2, "globalgcenabled"

    .line 600
    invoke-static {v8, v2, v9}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v15

    if-eq v1, v15, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v9

    .line 602
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readRcsDefaultEnabled(Z)I

    move-result v5

    if-eqz v6, :cond_1

    if-eqz v10, :cond_1

    .line 605
    iget-object v2, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v3, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMno: prevGcEnabled: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newGcEnabled: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/16 v17, 0x1

    .line 606
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readRcsDefaultEnabled(Z)I

    move-result v18

    move-object/from16 v1, p0

    move/from16 v19, v5

    move v5, v7

    move v7, v6

    move/from16 v6, v17

    move v9, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setSettingsFromSp(ZIZIZI)V

    .line 607
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setIsGcEnabledChange(Z)V

    goto :goto_1

    :cond_1
    move/from16 v19, v5

    :goto_1
    if-eqz v10, :cond_2

    .line 611
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setPrevGcEnabled(Z)V

    .line 614
    :cond_2
    invoke-static {v11}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 616
    iget v1, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v2, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v3, "globalsettings"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 619
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousImsi(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    .line 620
    iget-object v3, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v3, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 621
    iget-object v3, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v3, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 622
    iget-object v4, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v4, v5, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    .line 623
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 625
    :goto_2
    iput-object v8, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    .line 626
    invoke-virtual {v0, v9, v3, v4, v10}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->preUpdateSystemSettings(Lcom/sec/internal/constants/Mno;IZZ)I

    move-result v6

    .line 628
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->updateRequires(Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 629
    iget-object v3, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "simSlot["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] updateMno: update not requires"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    move/from16 v5, v19

    .line 631
    invoke-virtual {v0, v7, v5}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->initRcsUserSetting(II)V

    if-eqz v4, :cond_4

    .line 634
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "imsi"

    .line 635
    invoke-interface {v1, v3, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 636
    iget-object v3, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simSlot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] imsi changed:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 637
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    move/from16 v5, v19

    .line 642
    iget-object v2, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simSlot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] updateMno: update requires"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v14

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readVolteDefaultEnabled()I

    move-result v4

    const-string v2, "globalgcenabled"

    const/4 v3, 0x0

    .line 646
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->reset()V

    .line 650
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "globalgcenabled"

    .line 651
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 652
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 654
    iget-object v1, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v2, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    const-string/jumbo v4, "updateMno: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] => ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v9

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move/from16 v8, v18

    move-object v4, v11

    move v8, v5

    move-object v5, v14

    move v14, v7

    move/from16 v7, v17

    .line 656
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->updateSystemSettings(Lcom/sec/internal/constants/Mno;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;II)V

    .line 658
    iget-object v7, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    monitor-enter v7

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v11

    move-object v4, v12

    move v5, v13

    move-object/from16 v6, p1

    .line 660
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalSettingsFromJson(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 661
    iget-boolean v1, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mVersionUpdated:Z

    if-eqz v1, :cond_6

    .line 662
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalGcSettings(Z)V

    .line 664
    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readRcsDefaultEnabled(Z)I

    move-result v7

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readVolteDefaultEnabled()I

    move-result v12

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->requiredForceVolteDefaultEnabled()Ljava/lang/String;

    move-result-object v13

    .line 671
    iget-boolean v1, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mVersionUpdated:Z

    if-eqz v1, :cond_7

    if-eq v8, v7, :cond_8

    if-eqz v10, :cond_8

    .line 673
    iget-object v1, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMno : rcs_default_enabled: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] => ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    .line 674
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setSettingsFromSp(ZIZIZI)V

    goto :goto_3

    .line 677
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v9, v1, :cond_8

    if-eqz v10, :cond_8

    .line 678
    invoke-virtual {v0, v14, v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->initRcsUserSetting(II)V

    .line 682
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->needToCheckResetSetting()Z

    move-result v1

    if-eqz v1, :cond_b

    move/from16 v1, v18

    .line 683
    invoke-virtual {v0, v1, v12, v11, v13}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->needResetVolteAsDefault(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 685
    iget-object v2, v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMno : volte_domestic_default_enabled: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] => ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v8, 0x1

    if-ne v12, v8, :cond_9

    move/from16 v3, v16

    goto :goto_4

    :cond_9
    move v3, v8

    :goto_4
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v1, p0

    .line 687
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setSettingsFromSp(ZIZIZI)V

    goto :goto_5

    :cond_a
    const/4 v8, 0x1

    .line 689
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->initNeedToCheckResetSetting()V

    goto :goto_6

    :cond_b
    const/4 v8, 0x1

    :goto_6
    return v8

    :catchall_0
    move-exception v0

    .line 664
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 594
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected updateRequires(Landroid/content/ContentValues;)Z
    .locals 9

    .line 891
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "hassim"

    .line 893
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 895
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    const-string v2, "mnoname"

    .line 897
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mvnoname"

    .line 898
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkName"

    .line 899
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    const-string v5, "imsSwitchType"

    .line 903
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    if-nez p1, :cond_2

    .line 905
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 907
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v7, "globalsettings"

    invoke-static {v0, v6, v7, v5, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 912
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isVersionUpdated()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 913
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v1, "PDA or CSC version changed"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 914
    iput-boolean v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mVersionUpdated:Z

    return v7

    .line 918
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v6, v8}, Lcom/sec/internal/ims/util/CscParser;->isCscChanged(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 919
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "update Requires: CSC Info Changed"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 920
    iput-boolean v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mVersionUpdated:Z

    return v7

    .line 924
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 925
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string/jumbo v1, "update Requires: different mnoname"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 926
    iput-boolean v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoNameUpdated:Z

    return v7

    .line 928
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMvno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 929
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string/jumbo v1, "update Requires: different MVNO name"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 930
    iput-boolean v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoNameUpdated:Z

    return v7

    .line 934
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousNwCode(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 935
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string/jumbo v0, "update Requires: different omc_nw code"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v7

    .line 939
    :cond_7
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousNwName(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 940
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string/jumbo v0, "update Requires: different network name"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v7

    .line 944
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousHasSim(Landroid/content/SharedPreferences;)Z

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_9

    .line 945
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update Requires: hasSim Changed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v7

    .line 949
    :cond_9
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousCscImsSettingType(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 950
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 951
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update Requires: cscImsSettingType changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " => "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v7

    .line 956
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isUpdateNeeded()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 957
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string v0, "imsupdate changed."

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v7

    .line 961
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string/jumbo v0, "update not requires: same mno, same version"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :catchall_0
    move-exception p0

    .line 907
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected updateSystemSettings(Lcom/sec/internal/constants/Mno;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    .line 782
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 786
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move p5, v1

    .line 791
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isNeedToBeSetVoLTE(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 793
    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/os/DeviceUtil;->removeVolteMenuByCsc(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 794
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget p5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    const-string/jumbo v0, "reset voice and vt call settings db because of VOICECLLCSC CONFIGOPSTYLEMOBILENETWORKSETTINGMENU Feature"

    invoke-static {p1, p5, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    move v3, v0

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, p5

    move v3, v0

    .line 800
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isNeedToBeSetViLTE(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v2, p0

    move v6, p6

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setSettingsFromSp(ZIZIZI)V

    return-void
.end method
