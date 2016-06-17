.class public final enum Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;
.super Ljava/lang/Enum;
.source "ResourcePackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

.field public static final enum PARTNER_COMMON:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

.field public static final enum PARTNER_PRIVATE:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

.field public static final enum USER:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

.field public static final enum WDJ_HOSTED:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    const-string v1, "WDJ_HOSTED"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->WDJ_HOSTED:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 182
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    const-string v1, "PARTNER_COMMON"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->PARTNER_COMMON:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 186
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    const-string v1, "PARTNER_PRIVATE"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->PARTNER_PRIVATE:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 190
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->USER:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 176
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->WDJ_HOSTED:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->PARTNER_COMMON:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->PARTNER_PRIVATE:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->USER:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->value:I

    .line 196
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;
    .locals 1
    .parameter

    .prologue
    .line 176
    const-class v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->value:I

    return v0
.end method
