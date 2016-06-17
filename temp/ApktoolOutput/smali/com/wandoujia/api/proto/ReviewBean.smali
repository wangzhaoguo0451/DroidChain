.class public final Lcom/wandoujia/api/proto/ReviewBean;
.super Lcom/squareup/wire/Message;
.source "ReviewBean.java"


# static fields
.field public static final DEFAULT_HEAD_IMAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_OPERATION_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_RECOMMEND_WORDING:Ljava/lang/String; = ""

.field public static final DEFAULT_STORY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/StoryParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final head_image:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final operation_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final recommend_wording:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final story:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/StoryParagraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ReviewBean;->DEFAULT_STORY:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/ReviewBean$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 34
    iget-object v0, p1, Lcom/wandoujia/api/proto/ReviewBean$Builder;->operation_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->operation_title:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/wandoujia/api/proto/ReviewBean$Builder;->head_image:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->head_image:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/api/proto/ReviewBean$Builder;->story:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/ReviewBean;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    .line 37
    iget-object v0, p1, Lcom/wandoujia/api/proto/ReviewBean$Builder;->recommend_wording:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->recommend_wording:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/ReviewBean$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/ReviewBean;-><init>(Lcom/wandoujia/api/proto/ReviewBean$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/wandoujia/api/proto/ReviewBean;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p1, p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/ReviewBean;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 44
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/ReviewBean;

    .line 45
    iget-object v2, p0, Lcom/wandoujia/api/proto/ReviewBean;->operation_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ReviewBean;->operation_title:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ReviewBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ReviewBean;->head_image:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ReviewBean;->head_image:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ReviewBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    .line 47
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ReviewBean;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ReviewBean;->recommend_wording:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ReviewBean;->recommend_wording:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ReviewBean;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 53
    iget v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->hashCode:I

    .line 54
    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->operation_title:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->operation_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 56
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->head_image:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->head_image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 57
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->story:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 58
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/ReviewBean;->recommend_wording:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/ReviewBean;->recommend_wording:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 59
    iput v0, p0, Lcom/wandoujia/api/proto/ReviewBean;->hashCode:I

    .line 61
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 55
    goto :goto_0

    :cond_3
    move v0, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/4 v0, 0x1

    goto :goto_2
.end method
