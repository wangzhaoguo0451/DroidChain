.class public final Lcom/wandoujia/base/models/BaseDouble;
.super Lcom/squareup/wire/Message;
.source "BaseDouble.java"


# static fields
.field public static final DEFAULT_VAL:Ljava/lang/Double;


# instance fields
.field public final val:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/base/models/BaseDouble;->DEFAULT_VAL:Ljava/lang/Double;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/base/models/BaseDouble$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 20
    iget-object v0, p1, Lcom/wandoujia/base/models/BaseDouble$Builder;->val:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/base/models/BaseDouble;->val:Ljava/lang/Double;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/base/models/BaseDouble$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/base/models/BaseDouble;-><init>(Lcom/wandoujia/base/models/BaseDouble$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 25
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    .line 26
    :cond_0
    instance-of v0, p1, Lcom/wandoujia/base/models/BaseDouble;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/base/models/BaseDouble;->val:Ljava/lang/Double;

    check-cast p1, Lcom/wandoujia/base/models/BaseDouble;

    iget-object v1, p1, Lcom/wandoujia/base/models/BaseDouble;->val:Ljava/lang/Double;

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/base/models/BaseDouble;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/wandoujia/base/models/BaseDouble;->hashCode:I

    .line 33
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/models/BaseDouble;->val:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/base/models/BaseDouble;->val:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/wandoujia/base/models/BaseDouble;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
