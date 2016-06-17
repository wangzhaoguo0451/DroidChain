.class public final Lcom/wandoujia/api/proto/AppAward;
.super Lcom/squareup/wire/Message;
.source "AppAward.java"


# static fields
.field public static final DEFAULT_AUTHOR_DESC:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTHOR_LINK:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTHOR_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_BANNER:Ljava/lang/String; = ""

.field public static final DEFAULT_BLOG_IMAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_BLOG_LINK:Ljava/lang/String; = ""

.field public static final DEFAULT_BLOG_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_COMMENT:Ljava/lang/String; = ""

.field public static final DEFAULT_COVER:Ljava/lang/String; = ""

.field public static final DEFAULT_CREATION:Ljava/lang/Long; = null

.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_ISSUE:Ljava/lang/Integer; = null

.field public static final DEFAULT_MARKDOWN_COMMENT:Ljava/lang/String; = ""

.field public static final DEFAULT_MODIFICATION:Ljava/lang/Long;


# instance fields
.field public final author_desc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final author_link:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final author_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final banner:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final blog_image:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final blog_link:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final blog_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final comment:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cover:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final creation:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final issue:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final markdown_comment:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final modification:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppAward;->DEFAULT_CREATION:Ljava/lang/Long;

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppAward;->DEFAULT_ISSUE:Ljava/lang/Integer;

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/AppAward;->DEFAULT_MODIFICATION:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/AppAward$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 73
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->author_desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_desc:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->author_link:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_link:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->author_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_name:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->banner:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->banner:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_image:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_image:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_link:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_link:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->blog_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_title:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->comment:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->creation:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->creation:Ljava/lang/Long;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->issue:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->markdown_comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->markdown_comment:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->modification:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->modification:Ljava/lang/Long;

    .line 85
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->cover:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->cover:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppAward$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->description:Ljava/lang/String;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/AppAward$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/AppAward;-><init>(Lcom/wandoujia/api/proto/AppAward$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/AppAward;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 93
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/AppAward;

    .line 94
    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->author_desc:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->author_desc:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->author_link:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->author_link:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->author_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->author_name:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->banner:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->banner:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->blog_image:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->blog_image:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->blog_link:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->blog_link:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->blog_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->blog_title:Ljava/lang/String;

    .line 100
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->comment:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->creation:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->creation:Ljava/lang/Long;

    .line 102
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    .line 103
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->markdown_comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->markdown_comment:Ljava/lang/String;

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->modification:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->modification:Ljava/lang/Long;

    .line 105
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->cover:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->cover:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/AppAward;->description:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/AppAward;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    iget v0, p0, Lcom/wandoujia/api/proto/AppAward;->hashCode:I

    .line 113
    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_desc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 115
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_link:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_link:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->author_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->banner:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->banner:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 118
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_image:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_link:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_link:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_title:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->blog_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 121
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->comment:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->creation:Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->creation:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 123
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->issue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 124
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->markdown_comment:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->markdown_comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 125
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->modification:Ljava/lang/Long;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->modification:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 126
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->cover:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/api/proto/AppAward;->cover:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 127
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/AppAward;->description:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/AppAward;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 128
    iput v0, p0, Lcom/wandoujia/api/proto/AppAward;->hashCode:I

    .line 130
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 114
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 115
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 116
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 117
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 118
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 119
    goto :goto_5

    :cond_8
    move v0, v1

    .line 120
    goto :goto_6

    :cond_9
    move v0, v1

    .line 121
    goto :goto_7

    :cond_a
    move v0, v1

    .line 122
    goto :goto_8

    :cond_b
    move v0, v1

    .line 123
    goto :goto_9

    :cond_c
    move v0, v1

    .line 124
    goto :goto_a

    :cond_d
    move v0, v1

    .line 125
    goto :goto_b

    :cond_e
    move v0, v1

    .line 126
    goto :goto_c
.end method
