.class public final Lcom/wandoujia/api/proto/Tag;
.super Lcom/squareup/wire/Message;
.source "Tag.java"


# static fields
.field public static final DEFAULT_TAG_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_TAG_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;


# instance fields
.field public final action:Lcom/wandoujia/api/proto/Action;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public final color:Lcom/wandoujia/api/proto/Color;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final icon:Lcom/wandoujia/api/proto/Image;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final tag_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final tag_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Tag;->DEFAULT_TAG_ID:Ljava/lang/Integer;

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/Tag;->DEFAULT_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/Tag$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 50
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag$Builder;->tag_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag;->tag_id:Ljava/lang/Integer;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag$Builder;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag$Builder;->tag_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag$Builder;->icon:Lcom/wandoujia/api/proto/Image;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag$Builder;->color:Lcom/wandoujia/api/proto/Color;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/api/proto/Tag$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/Tag$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/Tag;-><init>(Lcom/wandoujia/api/proto/Tag$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/Tag;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 62
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/Tag;

    .line 63
    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->tag_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Tag;->tag_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Tag;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Tag;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Tag;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Tag;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Tag;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v3, p1, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/Tag;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/wandoujia/api/proto/Tag;->hashCode:I

    .line 74
    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->tag_id:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->tag_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 76
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->tag_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->icon:Lcom/wandoujia/api/proto/Image;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Image;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/Tag;->color:Lcom/wandoujia/api/proto/Color;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Color;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/Tag;->action:Lcom/wandoujia/api/proto/Action;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Action;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/wandoujia/api/proto/Tag;->hashCode:I

    .line 83
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

    :cond_6
    move v0, v1

    .line 79
    goto :goto_4
.end method
