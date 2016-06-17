.class public final Lcom/wandoujia/logv3/model/packages/UrlPackage;
.super Lcom/squareup/wire/Message;
.source "UrlPackage.java"


# static fields
.field public static final DEFAULT_NORMALIZED_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_VERTICAL:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;


# instance fields
.field public final normalized_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;->OTHERS:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->DEFAULT_VERTICAL:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 41
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->normalized_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/UrlPackage;-><init>(Lcom/wandoujia/logv3/model/packages/UrlPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 50
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 51
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/UrlPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/UrlPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/UrlPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 58
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->hashCode:I

    .line 59
    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 61
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 62
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->vertical:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->hashCode:I

    .line 65
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0

    :cond_3
    move v0, v1

    .line 61
    goto :goto_1
.end method
