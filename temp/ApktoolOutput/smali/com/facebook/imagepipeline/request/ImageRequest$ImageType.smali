.class public final enum Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;
.super Ljava/lang/Enum;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

.field public static final enum DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

.field public static final enum SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    .line 159
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->$VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

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
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;
    .locals 1
    .parameter

    .prologue
    .line 154
    const-class v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->$VALUES:[Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    return-object v0
.end method
