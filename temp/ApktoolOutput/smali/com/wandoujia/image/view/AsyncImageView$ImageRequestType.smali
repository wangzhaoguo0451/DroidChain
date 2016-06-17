.class public final enum Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;
.super Ljava/lang/Enum;
.source "AsyncImageView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

.field public static final enum APK_ICON:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

.field public static final enum APP_ICON:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

.field public static final enum LOCAL_IMAGE:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

.field public static final enum NETWORK:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

.field public static final enum VIDEO_THUMBNAIL:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 504
    new-instance v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->NETWORK:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    new-instance v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    const-string v1, "APP_ICON"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->APP_ICON:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    new-instance v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    const-string v1, "LOCAL_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->LOCAL_IMAGE:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    new-instance v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    const-string v1, "VIDEO_THUMBNAIL"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->VIDEO_THUMBNAIL:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    new-instance v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    const-string v1, "APK_ICON"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->APK_ICON:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    .line 503
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    sget-object v1, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->NETWORK:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->APP_ICON:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->LOCAL_IMAGE:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->VIDEO_THUMBNAIL:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->APK_ICON:Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->$VALUES:[Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;
    .locals 1
    .parameter

    .prologue
    .line 503
    const-class v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->$VALUES:[Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    invoke-virtual {v0}, [Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/image/view/AsyncImageView$ImageRequestType;

    return-object v0
.end method
