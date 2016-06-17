.class public final enum Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;
.super Ljava/lang/Enum;
.source "OpenTypePackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

.field public static final enum IAS_APP:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

.field public static final enum IAS_HTML5:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

.field public static final enum SYSTEM:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

.field public static final enum WDJ:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;


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

    .line 117
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    const-string v1, "WDJ"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->WDJ:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 121
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->SYSTEM:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 125
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    const-string v1, "IAS_APP"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->IAS_APP:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 129
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    const-string v1, "IAS_HTML5"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->IAS_HTML5:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->WDJ:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->SYSTEM:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->IAS_APP:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->IAS_HTML5:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->$VALUES:[Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->value:I

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;
    .locals 1
    .parameter

    .prologue
    .line 115
    const-class v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->$VALUES:[Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->value:I

    return v0
.end method
