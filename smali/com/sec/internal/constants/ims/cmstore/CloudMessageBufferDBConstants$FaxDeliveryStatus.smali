.class public final enum Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;
.super Ljava/lang/Enum;
.source "CloudMessageBufferDBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaxDeliveryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

.field public static final enum DELIVERED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

.field public static final enum FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

.field public static final enum PENDING:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;
    .locals 3

    .line 152
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->DELIVERED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->PENDING:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 153
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    const-string v1, "FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    .line 154
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    const-string v1, "DELIVERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->DELIVERED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    .line 155
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->PENDING:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    .line 152
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->$values()[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;
    .locals 1

    .line 152
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;
    .locals 1

    .line 152
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 164
    iget p0, p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$FaxDeliveryStatus;->mId:I

    return p0
.end method
