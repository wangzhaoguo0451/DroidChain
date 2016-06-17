.class public final enum Lcom/wandoujia/image/ImageUri$ImageUriType;
.super Ljava/lang/Enum;
.source "ImageUri.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/image/ImageUri$ImageUriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/image/ImageUri$ImageUriType;

.field public static final enum APK_ICON:Lcom/wandoujia/image/ImageUri$ImageUriType;

.field public static final enum APP_ICON:Lcom/wandoujia/image/ImageUri$ImageUriType;

.field public static final enum LOCAL_IMAGE_RES:Lcom/wandoujia/image/ImageUri$ImageUriType;

.field public static final enum MULTI_ICONS:Lcom/wandoujia/image/ImageUri$ImageUriType;

.field public static final enum NETWORK:Lcom/wandoujia/image/ImageUri$ImageUriType;

.field public static final enum UNSPECIFIED:Lcom/wandoujia/image/ImageUri$ImageUriType;

.field public static final enum VIDEO_THUMBNAIL:Lcom/wandoujia/image/ImageUri$ImageUriType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/image/ImageUri$ImageUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->NETWORK:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 97
    new-instance v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    const-string v1, "APP_ICON"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/image/ImageUri$ImageUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->APP_ICON:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 101
    new-instance v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    const-string v1, "LOCAL_IMAGE_RES"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/image/ImageUri$ImageUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->LOCAL_IMAGE_RES:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 105
    new-instance v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    const-string v1, "VIDEO_THUMBNAIL"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/image/ImageUri$ImageUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->VIDEO_THUMBNAIL:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 109
    new-instance v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    const-string v1, "APK_ICON"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/image/ImageUri$ImageUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->APK_ICON:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 113
    new-instance v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    const-string v1, "MULTI_ICONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/image/ImageUri$ImageUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->MULTI_ICONS:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 117
    new-instance v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/image/ImageUri$ImageUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->UNSPECIFIED:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/image/ImageUri$ImageUriType;

    sget-object v1, Lcom/wandoujia/image/ImageUri$ImageUriType;->NETWORK:Lcom/wandoujia/image/ImageUri$ImageUriType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/image/ImageUri$ImageUriType;->APP_ICON:Lcom/wandoujia/image/ImageUri$ImageUriType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/image/ImageUri$ImageUriType;->LOCAL_IMAGE_RES:Lcom/wandoujia/image/ImageUri$ImageUriType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/image/ImageUri$ImageUriType;->VIDEO_THUMBNAIL:Lcom/wandoujia/image/ImageUri$ImageUriType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/image/ImageUri$ImageUriType;->APK_ICON:Lcom/wandoujia/image/ImageUri$ImageUriType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/image/ImageUri$ImageUriType;->MULTI_ICONS:Lcom/wandoujia/image/ImageUri$ImageUriType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/image/ImageUri$ImageUriType;->UNSPECIFIED:Lcom/wandoujia/image/ImageUri$ImageUriType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->$VALUES:[Lcom/wandoujia/image/ImageUri$ImageUriType;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/image/ImageUri$ImageUriType;
    .locals 1
    .parameter

    .prologue
    .line 89
    const-class v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/ImageUri$ImageUriType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/image/ImageUri$ImageUriType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->$VALUES:[Lcom/wandoujia/image/ImageUri$ImageUriType;

    invoke-virtual {v0}, [Lcom/wandoujia/image/ImageUri$ImageUriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/image/ImageUri$ImageUriType;

    return-object v0
.end method
