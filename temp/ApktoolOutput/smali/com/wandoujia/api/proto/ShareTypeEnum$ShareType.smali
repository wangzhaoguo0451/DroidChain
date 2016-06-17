.class public final enum Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;
.super Ljava/lang/Enum;
.source "ShareTypeEnum.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

.field public static final enum IMAGE:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

.field public static final enum ITEM:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

.field public static final enum RIPPLE:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 41
    new-instance v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    const-string v1, "ITEM"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->ITEM:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    .line 42
    new-instance v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->IMAGE:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    .line 43
    new-instance v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    const-string v1, "RIPPLE"

    invoke-direct {v0, v1, v3, v5}, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->RIPPLE:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    .line 39
    new-array v0, v5, [Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    sget-object v1, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->ITEM:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->IMAGE:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->RIPPLE:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->$VALUES:[Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->value:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->$VALUES:[Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->value:I

    return v0
.end method
