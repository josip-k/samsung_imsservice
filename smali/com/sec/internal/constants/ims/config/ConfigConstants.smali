.class public Lcom/sec/internal/constants/ims/config/ConfigConstants;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/config/ConfigConstants$NetworkType;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$ConfigTable;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$ConfigPath;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$VALUE;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$PATH;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$PNAME;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$CAPABILITY_DISCOVERY_TYPE;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$CONFIG_TYPE;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$ATCMD;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$TEMPLATE;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$KEY;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$URL;,
        Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;
    }
.end annotation


# static fields
.field public static final APPID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.autoconfigurationprovider"

.field public static final CONFIG_URI:Ljava/lang/String; = "content://com.samsung.rcs.autoconfigurationprovider/"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IID_TOKEN_MIN_CLIENT_VERSION:F = 8.5f

.field public static final IID_TOKEN_MIN_GMS_CORE_VERSION:J = 0xc8d8040L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 599
    new-instance v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
