.class public final enum Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;
.super Ljava/lang/Enum;
.source "OpenTypePackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

.field public static final enum LOCAL:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

.field public static final enum ONLINE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->ONLINE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    .line 146
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->LOCAL:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->ONLINE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->LOCAL:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->$VALUES:[Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->value:I

    .line 152
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;
    .locals 1
    .parameter

    .prologue
    .line 143
    const-class v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->$VALUES:[Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->value:I

    return v0
.end method
