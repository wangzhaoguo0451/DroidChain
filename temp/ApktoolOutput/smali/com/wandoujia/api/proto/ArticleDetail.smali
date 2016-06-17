.class public final Lcom/wandoujia/api/proto/ArticleDetail;
.super Lcom/squareup/wire/Message;
.source "ArticleDetail.java"


# static fields
.field public static final DEFAULT_AUTHOR:Ljava/lang/String; = ""

.field public static final DEFAULT_CONTENT_HTML:Ljava/lang/String; = ""

.field public static final DEFAULT_IS_AD:Ljava/lang/Boolean;

.field public static final DEFAULT_PUBLISHED_DATE:Ljava/lang/Long;


# instance fields
.field public final author:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final content_html:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final published_date:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ArticleDetail;->DEFAULT_PUBLISHED_DATE:Ljava/lang/Long;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ArticleDetail;->DEFAULT_IS_AD:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/ArticleDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 33
    iget-object v0, p1, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->published_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->published_date:Ljava/lang/Long;

    .line 34
    iget-object v0, p1, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->author:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->is_ad:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->is_ad:Ljava/lang/Boolean;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/api/proto/ArticleDetail$Builder;->content_html:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->content_html:Ljava/lang/String;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/ArticleDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/ArticleDetail;-><init>(Lcom/wandoujia/api/proto/ArticleDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/ArticleDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 43
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/ArticleDetail;

    .line 44
    iget-object v2, p0, Lcom/wandoujia/api/proto/ArticleDetail;->published_date:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ArticleDetail;->published_date:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ArticleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ArticleDetail;->author:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ArticleDetail;->author:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ArticleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ArticleDetail;->is_ad:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ArticleDetail;->is_ad:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ArticleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ArticleDetail;->content_html:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ArticleDetail;->content_html:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ArticleDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 52
    iget v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->hashCode:I

    .line 53
    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->published_date:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->published_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 55
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->author:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->author:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 56
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->is_ad:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->is_ad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 57
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/ArticleDetail;->content_html:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/ArticleDetail;->content_html:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 58
    iput v0, p0, Lcom/wandoujia/api/proto/ArticleDetail;->hashCode:I

    .line 60
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 54
    goto :goto_0

    :cond_3
    move v0, v1

    .line 55
    goto :goto_1

    :cond_4
    move v0, v1

    .line 56
    goto :goto_2
.end method
