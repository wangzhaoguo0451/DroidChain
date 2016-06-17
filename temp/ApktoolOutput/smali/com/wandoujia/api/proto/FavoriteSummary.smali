.class public final Lcom/wandoujia/api/proto/FavoriteSummary;
.super Lcom/squareup/wire/Message;
.source "FavoriteSummary.java"


# static fields
.field public static final DEFAULT_FAVORITED:Ljava/lang/Boolean;

.field public static final DEFAULT_FRIENDS_AVATAR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NEXT_VERSION:Ljava/lang/Long;

.field public static final DEFAULT_TOTAL_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_UPDATE_TIME:Ljava/lang/Long;

.field public static final DEFAULT_VERSION:Ljava/lang/Long;


# instance fields
.field public final favorited:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final friends_avatar:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final next_version:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final total_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final update_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavoriteSummary;->DEFAULT_FRIENDS_AVATAR:Ljava/util/List;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavoriteSummary;->DEFAULT_TOTAL_COUNT:Ljava/lang/Integer;

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavoriteSummary;->DEFAULT_FAVORITED:Ljava/lang/Boolean;

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavoriteSummary;->DEFAULT_VERSION:Ljava/lang/Long;

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavoriteSummary;->DEFAULT_NEXT_VERSION:Ljava/lang/Long;

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavoriteSummary;->DEFAULT_UPDATE_TIME:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/FavoriteSummary$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 52
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->friends_avatar:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/FavoriteSummary;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->friends_avatar:Ljava/util/List;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->total_count:Ljava/lang/Integer;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->favorited:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->favorited:Ljava/lang/Boolean;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->version:Ljava/lang/Long;

    .line 56
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->next_version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->next_version:Ljava/lang/Long;

    .line 57
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->update_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->update_time:Ljava/lang/Long;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/FavoriteSummary$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/FavoriteSummary;-><init>(Lcom/wandoujia/api/proto/FavoriteSummary$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/wandoujia/api/proto/FavoriteSummary;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 62
    if-ne p1, p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/FavoriteSummary;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 64
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/FavoriteSummary;

    .line 65
    iget-object v2, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->friends_avatar:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->friends_avatar:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavoriteSummary;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->total_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->total_count:Ljava/lang/Integer;

    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavoriteSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->favorited:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->favorited:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavoriteSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->version:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->version:Ljava/lang/Long;

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavoriteSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->next_version:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->next_version:Ljava/lang/Long;

    .line 69
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavoriteSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->update_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->update_time:Ljava/lang/Long;

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavoriteSummary;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 75
    iget v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->hashCode:I

    .line 76
    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->friends_avatar:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->friends_avatar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 78
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->total_count:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->total_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->favorited:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->favorited:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->version:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 81
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->next_version:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->next_version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->update_time:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->update_time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 83
    iput v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary;->hashCode:I

    .line 85
    :cond_1
    return v0

    .line 77
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 78
    goto :goto_1

    :cond_4
    move v0, v1

    .line 79
    goto :goto_2

    :cond_5
    move v0, v1

    .line 80
    goto :goto_3

    :cond_6
    move v0, v1

    .line 81
    goto :goto_4
.end method
