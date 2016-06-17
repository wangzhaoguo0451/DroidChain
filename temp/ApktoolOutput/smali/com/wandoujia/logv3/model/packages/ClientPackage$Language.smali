.class public final enum Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;
.super Ljava/lang/Enum;
.source "ClientPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

.field public static final enum ENGLISH:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

.field public static final enum SIMPLE_CHINESE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

.field public static final enum THAI:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 375
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    const-string v1, "SIMPLE_CHINESE"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->SIMPLE_CHINESE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    .line 376
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    const-string v1, "ENGLISH"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->ENGLISH:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    .line 377
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    const-string v1, "THAI"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->THAI:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    .line 373
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->SIMPLE_CHINESE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->ENGLISH:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->THAI:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

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
    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 382
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->value:I

    .line 383
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;
    .locals 1
    .parameter

    .prologue
    .line 373
    const-class v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;->value:I

    return v0
.end method
