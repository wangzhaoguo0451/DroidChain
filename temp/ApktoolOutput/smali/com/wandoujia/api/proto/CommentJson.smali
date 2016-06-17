.class public final Lcom/wandoujia/api/proto/CommentJson;
.super Lcom/squareup/wire/Message;
.source "CommentJson.java"


# static fields
.field public static final DEFAULT_AGREE:Ljava/lang/Boolean; = null

.field public static final DEFAULT_AGREECOUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_AUTHORID:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTHORNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_AVATAR:Ljava/lang/String; = ""

.field public static final DEFAULT_CONTENT:Ljava/lang/String; = ""

.field public static final DEFAULT_DATE:Ljava/lang/String; = ""

.field public static final DEFAULT_ENJOY:Ljava/lang/Boolean;

.field public static final DEFAULT_HOT:Ljava/lang/Boolean;

.field public static final DEFAULT_ID:Ljava/lang/Long;


# instance fields
.field public final agree:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final agreeCount:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final authorId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final authorName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final avatar:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final content:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final date:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final enjoy:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final hot:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CommentJson;->DEFAULT_ID:Ljava/lang/Long;

    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CommentJson;->DEFAULT_ENJOY:Ljava/lang/Boolean;

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CommentJson;->DEFAULT_AGREE:Ljava/lang/Boolean;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CommentJson;->DEFAULT_AGREECOUNT:Ljava/lang/Integer;

    .line 24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CommentJson;->DEFAULT_HOT:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/CommentJson$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 67
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->id:Ljava/lang/Long;

    .line 68
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->authorId:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->authorId:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->authorName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->authorName:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->avatar:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->enjoy:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->enjoy:Ljava/lang/Boolean;

    .line 72
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->date:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->content:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->agree:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->agree:Ljava/lang/Boolean;

    .line 75
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->agreeCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->agreeCount:Ljava/lang/Integer;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentJson$Builder;->hot:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->hot:Ljava/lang/Boolean;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/CommentJson$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/CommentJson;-><init>(Lcom/wandoujia/api/proto/CommentJson$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/CommentJson;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 83
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/CommentJson;

    .line 84
    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->id:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->authorId:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->authorId:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->authorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->authorName:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->avatar:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->enjoy:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->enjoy:Ljava/lang/Boolean;

    .line 88
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->date:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->content:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->agree:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->agree:Ljava/lang/Boolean;

    .line 91
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->agreeCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->agreeCount:Ljava/lang/Integer;

    .line 92
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->hot:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentJson;->hot:Ljava/lang/Boolean;

    .line 93
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentJson;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 98
    iget v0, p0, Lcom/wandoujia/api/proto/CommentJson;->hashCode:I

    .line 99
    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->id:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 101
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->authorId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->authorId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->authorName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->authorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->avatar:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->avatar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->enjoy:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->enjoy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->date:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->date:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->content:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->agree:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->agree:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->agreeCount:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentJson;->agreeCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentJson;->hot:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/CommentJson;->hot:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 110
    iput v0, p0, Lcom/wandoujia/api/proto/CommentJson;->hashCode:I

    .line 112
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0

    :cond_3
    move v0, v1

    .line 101
    goto :goto_1

    :cond_4
    move v0, v1

    .line 102
    goto :goto_2

    :cond_5
    move v0, v1

    .line 103
    goto :goto_3

    :cond_6
    move v0, v1

    .line 104
    goto :goto_4

    :cond_7
    move v0, v1

    .line 105
    goto :goto_5

    :cond_8
    move v0, v1

    .line 106
    goto :goto_6

    :cond_9
    move v0, v1

    .line 107
    goto :goto_7

    :cond_a
    move v0, v1

    .line 108
    goto :goto_8
.end method
