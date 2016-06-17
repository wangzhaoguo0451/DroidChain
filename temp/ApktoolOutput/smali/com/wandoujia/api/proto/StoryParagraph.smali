.class public final Lcom/wandoujia/api/proto/StoryParagraph;
.super Lcom/squareup/wire/Message;
.source "StoryParagraph.java"


# static fields
.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE_NAME:Ljava/lang/String; = ""


# instance fields
.field public final item:Lcom/wandoujia/api/proto/ParagraphContent;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/api/proto/StoryParagraph$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 26
    iget-object v0, p1, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->type_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->type_name:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/wandoujia/api/proto/StoryParagraph$Builder;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iput-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/StoryParagraph$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/StoryParagraph;-><init>(Lcom/wandoujia/api/proto/StoryParagraph$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/StoryParagraph;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 35
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/StoryParagraph;

    .line 36
    iget-object v2, p0, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/StoryParagraph;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/StoryParagraph;->type_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/StoryParagraph;->type_name:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/StoryParagraph;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    iget-object v3, p1, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/StoryParagraph;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 43
    iget v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->hashCode:I

    .line 44
    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 46
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->type_name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->type_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/StoryParagraph;->item:Lcom/wandoujia/api/proto/ParagraphContent;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ParagraphContent;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 48
    iput v0, p0, Lcom/wandoujia/api/proto/StoryParagraph;->hashCode:I

    .line 50
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 45
    goto :goto_0

    :cond_3
    move v0, v1

    .line 46
    goto :goto_1
.end method
