.class public final Lcom/wandoujia/logv3/model/packages/TimingPackage;
.super Lcom/squareup/wire/Message;
.source "TimingPackage.java"


# static fields
.field public static final DEFAULT_DURATION:Ljava/lang/Long;

.field public static final DEFAULT_END:Ljava/lang/Long;

.field public static final DEFAULT_START:Ljava/lang/Long;


# instance fields
.field public final duration:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final end:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final start:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->DEFAULT_START:Ljava/lang/Long;

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->DEFAULT_END:Ljava/lang/Long;

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->DEFAULT_DURATION:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 30
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->start:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->start:Ljava/lang/Long;

    .line 31
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->end:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->end:Ljava/lang/Long;

    .line 32
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;->duration:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->duration:Ljava/lang/Long;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/TimingPackage;-><init>(Lcom/wandoujia/logv3/model/packages/TimingPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p1, p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 39
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/TimingPackage;

    .line 40
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->start:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage;->start:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TimingPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->end:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage;->end:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TimingPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->duration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TimingPackage;->duration:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TimingPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 47
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->hashCode:I

    .line 48
    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->start:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->start:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 50
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->end:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->end:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->duration:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->duration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 52
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/TimingPackage;->hashCode:I

    .line 54
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0

    :cond_3
    move v0, v1

    .line 50
    goto :goto_1
.end method
