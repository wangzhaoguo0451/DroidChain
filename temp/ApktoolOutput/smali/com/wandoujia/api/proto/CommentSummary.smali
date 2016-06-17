.class public final Lcom/wandoujia/api/proto/CommentSummary;
.super Lcom/squareup/wire/Message;
.source "CommentSummary.java"


# static fields
.field public static final DEFAULT_COMMENT:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/CommentJson;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COUNT:Ljava/lang/Integer; = null

.field public static final DEFAULT_TARGET:Ljava/lang/String; = ""


# instance fields
.field public final comment:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/CommentJson;",
            ">;"
        }
    .end annotation
.end field

.field public final count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public final savedComment:Lcom/wandoujia/api/proto/CommentJson;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public final target:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user:Lcom/wandoujia/api/proto/UserCenterInfo;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CommentSummary;->DEFAULT_COUNT:Ljava/lang/Integer;

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/CommentSummary;->DEFAULT_COMMENT:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/CommentSummary$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 40
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary$Builder;->count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->count:Ljava/lang/Integer;

    .line 41
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary$Builder;->target:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->target:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary$Builder;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    .line 43
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary$Builder;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    .line 44
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary$Builder;->comment:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/CommentSummary;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    .line 45
    iget-object v0, p1, Lcom/wandoujia/api/proto/CommentSummary$Builder;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    iput-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/CommentSummary$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/CommentSummary;-><init>(Lcom/wandoujia/api/proto/CommentSummary$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-static {p0}, Lcom/wandoujia/api/proto/CommentSummary;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 50
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/CommentSummary;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 52
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/CommentSummary;

    .line 53
    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentSummary;->count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentSummary;->count:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentSummary;->target:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentSummary;->target:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentSummary;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentSummary;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    .line 55
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentSummary;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentSummary;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    .line 56
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    .line 57
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentSummary;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentSummary;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    iget-object v3, p1, Lcom/wandoujia/api/proto/CommentSummary;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/CommentSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 63
    iget v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->hashCode:I

    .line 64
    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 66
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->target:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->target:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 67
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->savedComment:Lcom/wandoujia/api/proto/CommentJson;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/CommentJson;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 68
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->user:Lcom/wandoujia/api/proto/UserCenterInfo;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/UserCenterInfo;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->comment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 70
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/CommentSummary;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/CommentSummary;->enjoySummary:Lcom/wandoujia/api/proto/EnjoySummary;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/EnjoySummary;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/wandoujia/api/proto/CommentSummary;->hashCode:I

    .line 73
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 65
    goto :goto_0

    :cond_3
    move v0, v1

    .line 66
    goto :goto_1

    :cond_4
    move v0, v1

    .line 67
    goto :goto_2

    :cond_5
    move v0, v1

    .line 68
    goto :goto_3

    .line 69
    :cond_6
    const/4 v0, 0x1

    goto :goto_4
.end method
