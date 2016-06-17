.class public final Lcom/wandoujia/logv3/model/packages/NotificationPackage;
.super Lcom/squareup/wire/Message;
.source "NotificationPackage.java"


# static fields
.field public static final DEFAULT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_STYLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final style:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 52
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->title:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->id:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->type:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->style:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->style:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/NotificationPackage;-><init>(Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p1, p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 63
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;

    .line 64
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->style:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->style:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 73
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->hashCode:I

    .line 74
    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 76
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->style:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->style:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/UrlPackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 80
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->hashCode:I

    .line 82
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 75
    goto :goto_0

    :cond_3
    move v0, v1

    .line 76
    goto :goto_1

    :cond_4
    move v0, v1

    .line 77
    goto :goto_2

    :cond_5
    move v0, v1

    .line 78
    goto :goto_3
.end method
