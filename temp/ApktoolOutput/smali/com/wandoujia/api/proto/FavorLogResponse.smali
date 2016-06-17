.class public final Lcom/wandoujia/api/proto/FavorLogResponse;
.super Lcom/squareup/wire/Message;
.source "FavorLogResponse.java"


# static fields
.field public static final DEFAULT_HEAD:Ljava/lang/Long;

.field public static final DEFAULT_NEXT_HEAD:Ljava/lang/Long;

.field public static final DEFAULT_NOTHING_COMMIT:Ljava/lang/Boolean;

.field public static final DEFAULT_PB_VERSION:Ljava/lang/Integer;

.field public static final DEFAULT_STATUS:Ljava/lang/Integer;


# instance fields
.field public final head:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final next_head:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final nothing_commit:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pb_version:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLogResponse;->DEFAULT_PB_VERSION:Ljava/lang/Integer;

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLogResponse;->DEFAULT_HEAD:Ljava/lang/Long;

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLogResponse;->DEFAULT_NEXT_HEAD:Ljava/lang/Long;

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLogResponse;->DEFAULT_STATUS:Ljava/lang/Integer;

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLogResponse;->DEFAULT_NOTHING_COMMIT:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/FavorLogResponse$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 47
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->pb_version:Ljava/lang/Integer;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->head:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->head:Ljava/lang/Long;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->next_head:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->next_head:Ljava/lang/Long;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->status:Ljava/lang/Integer;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->nothing_commit:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->nothing_commit:Ljava/lang/Boolean;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/FavorLogResponse$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/FavorLogResponse;-><init>(Lcom/wandoujia/api/proto/FavorLogResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p1, p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/FavorLogResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/FavorLogResponse;

    .line 59
    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->pb_version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->pb_version:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLogResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->head:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->head:Ljava/lang/Long;

    .line 60
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLogResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->next_head:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->next_head:Ljava/lang/Long;

    .line 61
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLogResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->status:Ljava/lang/Integer;

    .line 62
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLogResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->nothing_commit:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->nothing_commit:Ljava/lang/Boolean;

    .line 63
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLogResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 68
    iget v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->hashCode:I

    .line 69
    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->pb_version:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->pb_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 71
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->head:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->head:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 72
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->next_head:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->next_head:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->status:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->nothing_commit:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->nothing_commit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 75
    iput v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse;->hashCode:I

    .line 77
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_1

    :cond_4
    move v0, v1

    .line 72
    goto :goto_2

    :cond_5
    move v0, v1

    .line 73
    goto :goto_3
.end method
