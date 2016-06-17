.class public final Lcom/wandoujia/api/proto/IOSAppDetail;
.super Lcom/squareup/wire/Message;
.source "IOSAppDetail.java"


# static fields
.field public static final DEFAULT_ICON:Ljava/lang/String; = ""

.field public static final DEFAULT_IOS_SCHEMA:Ljava/lang/String; = ""

.field public static final DEFAULT_ITUNES_DOWNLOAD_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final icon:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ios_schema:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final itunes_download_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/api/proto/IOSAppDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 31
    iget-object v0, p1, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->ios_schema:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->ios_schema:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->itunes_download_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->itunes_download_url:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->icon:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/wandoujia/api/proto/IOSAppDetail$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/IOSAppDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/IOSAppDetail;-><init>(Lcom/wandoujia/api/proto/IOSAppDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/IOSAppDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 41
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/IOSAppDetail;

    .line 42
    iget-object v2, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->ios_schema:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IOSAppDetail;->ios_schema:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IOSAppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->itunes_download_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IOSAppDetail;->itunes_download_url:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IOSAppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->icon:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IOSAppDetail;->icon:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IOSAppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/IOSAppDetail;->title:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/IOSAppDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 50
    iget v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->hashCode:I

    .line 51
    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->ios_schema:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->ios_schema:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 53
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->itunes_download_url:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->itunes_download_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 54
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->icon:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->icon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 55
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/wandoujia/api/proto/IOSAppDetail;->hashCode:I

    .line 58
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0

    :cond_3
    move v0, v1

    .line 53
    goto :goto_1

    :cond_4
    move v0, v1

    .line 54
    goto :goto_2
.end method
