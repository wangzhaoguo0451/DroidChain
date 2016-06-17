.class public final enum Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;
.super Ljava/lang/Enum;
.source "ShowEvent.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

.field public static final enum CARD:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

.field public static final enum PAGE:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    const-string v1, "PAGE"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->PAGE:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    .line 156
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->CARD:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->PAGE:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->CARD:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->value:I

    .line 162
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;
    .locals 1
    .parameter

    .prologue
    .line 150
    const-class v0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->value:I

    return v0
.end method
