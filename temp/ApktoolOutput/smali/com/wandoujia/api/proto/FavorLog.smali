.class public final Lcom/wandoujia/api/proto/FavorLog;
.super Lcom/squareup/wire/Message;
.source "FavorLog.java"


# static fields
.field public static final DEFAULT_COMMIT_VERSION:Ljava/lang/Long;

.field public static final DEFAULT_FAVOR:Ljava/lang/Boolean;

.field public static final DEFAULT_FEED_ID:Ljava/lang/Long;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long;


# instance fields
.field public final commit_version:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final favor:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final feed_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLog;->DEFAULT_FEED_ID:Ljava/lang/Long;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLog;->DEFAULT_FAVOR:Ljava/lang/Boolean;

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLog;->DEFAULT_COMMIT_VERSION:Ljava/lang/Long;

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/FavorLog;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/FavorLog$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 37
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLog$Builder;->feed_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->feed_id:Ljava/lang/Long;

    .line 38
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLog$Builder;->favor:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->favor:Ljava/lang/Boolean;

    .line 39
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLog$Builder;->commit_version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->commit_version:Ljava/lang/Long;

    .line 40
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLog$Builder;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->timestamp:Ljava/lang/Long;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/FavorLog$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/FavorLog;-><init>(Lcom/wandoujia/api/proto/FavorLog$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p1, p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/FavorLog;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 47
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/FavorLog;

    .line 48
    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLog;->feed_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLog;->feed_id:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLog;->favor:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLog;->favor:Ljava/lang/Boolean;

    .line 49
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLog;->commit_version:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLog;->commit_version:Ljava/lang/Long;

    .line 50
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLog;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/FavorLog;->timestamp:Ljava/lang/Long;

    .line 51
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/FavorLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 56
    iget v0, p0, Lcom/wandoujia/api/proto/FavorLog;->hashCode:I

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->feed_id:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->feed_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->favor:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->favor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->commit_version:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/FavorLog;->commit_version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 61
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/FavorLog;->timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/FavorLog;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/wandoujia/api/proto/FavorLog;->hashCode:I

    .line 64
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_1

    :cond_4
    move v0, v1

    .line 60
    goto :goto_2
.end method
