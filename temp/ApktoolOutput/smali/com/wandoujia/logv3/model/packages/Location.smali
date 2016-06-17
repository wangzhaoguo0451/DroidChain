.class public final Lcom/wandoujia/logv3/model/packages/Location;
.super Lcom/squareup/wire/Message;
.source "Location.java"


# static fields
.field public static final DEFAULT_ACCURACY:Ljava/lang/Float;

.field public static final DEFAULT_LATITUDE:Ljava/lang/Double;

.field public static final DEFAULT_LONGITUDE:Ljava/lang/Double;

.field public static final DEFAULT_STANDARD:Lcom/wandoujia/logv3/model/packages/Location$Standard;


# instance fields
.field public final accuracy:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final latitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final longitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final standard:Lcom/wandoujia/logv3/model/packages/Location$Standard;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/Location;->DEFAULT_LATITUDE:Ljava/lang/Double;

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/Location;->DEFAULT_LONGITUDE:Ljava/lang/Double;

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/Location;->DEFAULT_ACCURACY:Ljava/lang/Float;

    .line 19
    sget-object v0, Lcom/wandoujia/logv3/model/packages/Location$Standard;->GCJ_02:Lcom/wandoujia/logv3/model/packages/Location$Standard;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/Location;->DEFAULT_STANDARD:Lcom/wandoujia/logv3/model/packages/Location$Standard;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/Location$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 35
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/Location$Builder;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->latitude:Ljava/lang/Double;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/Location$Builder;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->longitude:Ljava/lang/Double;

    .line 37
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/Location$Builder;->accuracy:Ljava/lang/Float;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->accuracy:Ljava/lang/Float;

    .line 38
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/Location$Builder;->standard:Lcom/wandoujia/logv3/model/packages/Location$Standard;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->standard:Lcom/wandoujia/logv3/model/packages/Location$Standard;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/Location$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/Location;-><init>(Lcom/wandoujia/logv3/model/packages/Location$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/Location;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 45
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/Location;

    .line 46
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/Location;->latitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/Location;->latitude:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/Location;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/Location;->longitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/Location;->longitude:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/Location;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/Location;->accuracy:Ljava/lang/Float;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/Location;->accuracy:Ljava/lang/Float;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/Location;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/Location;->standard:Lcom/wandoujia/logv3/model/packages/Location$Standard;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/Location;->standard:Lcom/wandoujia/logv3/model/packages/Location$Standard;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/Location;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 54
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->hashCode:I

    .line 55
    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    .line 57
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->longitude:Ljava/lang/Double;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 58
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->accuracy:Ljava/lang/Float;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->accuracy:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 59
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/Location;->standard:Lcom/wandoujia/logv3/model/packages/Location$Standard;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/Location;->standard:Lcom/wandoujia/logv3/model/packages/Location$Standard;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/Location$Standard;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 60
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/Location;->hashCode:I

    .line 62
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 56
    goto :goto_0

    :cond_3
    move v0, v1

    .line 57
    goto :goto_1

    :cond_4
    move v0, v1

    .line 58
    goto :goto_2
.end method
