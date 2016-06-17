.class public final enum Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;
.super Ljava/lang/Enum;
.source "ThumbImageEnum.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

.field public static final enum COVER:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

.field public static final enum ICON:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    new-instance v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->ICON:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    .line 42
    new-instance v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v2, v4}, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->COVER:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    .line 39
    new-array v0, v4, [Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    sget-object v1, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->ICON:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->COVER:Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    aput-object v1, v0, v2

    sput-object v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->$VALUES:[Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->value:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->$VALUES:[Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/wandoujia/api/proto/ThumbImageEnum$ThumbImage;->value:I

    return v0
.end method
