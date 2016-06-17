.class public final Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;
.super Lcom/squareup/wire/Message;
.source "LaunchSourcePackage.java"


# static fields
.field public static final DEFAULT_KEYWORD:Ljava/lang/String; = ""

.field public static final DEFAULT_SOURCE:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;


# instance fields
.field public final keyword:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->DEFAULT_SOURCE:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 34
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 35
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->keyword:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->keyword:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;-><init>(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 42
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    .line 43
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->keyword:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->keyword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 49
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->hashCode:I

    .line 50
    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->hashCode()I

    move-result v0

    .line 52
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->keyword:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->keyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 53
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->hashCode:I

    .line 55
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 51
    goto :goto_0
.end method
