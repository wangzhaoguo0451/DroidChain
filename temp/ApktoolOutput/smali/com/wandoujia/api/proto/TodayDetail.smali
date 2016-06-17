.class public final Lcom/wandoujia/api/proto/TodayDetail;
.super Lcom/squareup/wire/Message;
.source "TodayDetail.java"


# static fields
.field public static final DEFAULT_GENERATE_TIME:Ljava/lang/Long; = null

.field public static final DEFAULT_NEED_PREFETCH:Ljava/lang/Boolean; = null

.field public static final DEFAULT_NEXT_TIME:Ljava/lang/Long; = null

.field public static final DEFAULT_NOTIFY_TIME:Ljava/lang/Long; = null

.field public static final DEFAULT_TITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_UPDATE_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_UPDATE_PROVIDER_COUNT:Ljava/lang/Integer;


# instance fields
.field public final generate_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final need_prefetch:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final next_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final notify_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final update_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final update_provider_count:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
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
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TodayDetail;->DEFAULT_GENERATE_TIME:Ljava/lang/Long;

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TodayDetail;->DEFAULT_NEXT_TIME:Ljava/lang/Long;

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TodayDetail;->DEFAULT_NOTIFY_TIME:Ljava/lang/Long;

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TodayDetail;->DEFAULT_UPDATE_COUNT:Ljava/lang/Integer;

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TodayDetail;->DEFAULT_NEED_PREFETCH:Ljava/lang/Boolean;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/TodayDetail;->DEFAULT_UPDATE_PROVIDER_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/TodayDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 48
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail$Builder;->generate_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->generate_time:Ljava/lang/Long;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail$Builder;->next_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->next_time:Ljava/lang/Long;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail$Builder;->notify_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->notify_time:Ljava/lang/Long;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail$Builder;->update_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->update_count:Ljava/lang/Integer;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail$Builder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->title:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail$Builder;->need_prefetch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->need_prefetch:Ljava/lang/Boolean;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/api/proto/TodayDetail$Builder;->update_provider_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->update_provider_count:Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/TodayDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/TodayDetail;-><init>(Lcom/wandoujia/api/proto/TodayDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/TodayDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 61
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/TodayDetail;

    .line 62
    iget-object v2, p0, Lcom/wandoujia/api/proto/TodayDetail;->generate_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TodayDetail;->generate_time:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TodayDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TodayDetail;->next_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TodayDetail;->next_time:Ljava/lang/Long;

    .line 63
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TodayDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TodayDetail;->notify_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TodayDetail;->notify_time:Ljava/lang/Long;

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TodayDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TodayDetail;->update_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TodayDetail;->update_count:Ljava/lang/Integer;

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TodayDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TodayDetail;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TodayDetail;->title:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TodayDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TodayDetail;->need_prefetch:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TodayDetail;->need_prefetch:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TodayDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/TodayDetail;->update_provider_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/TodayDetail;->update_provider_count:Ljava/lang/Integer;

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/TodayDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->hashCode:I

    .line 74
    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->generate_time:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->generate_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 76
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->next_time:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->next_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->notify_time:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->notify_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->update_count:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->update_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->title:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->need_prefetch:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->need_prefetch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 81
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/TodayDetail;->update_provider_count:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/TodayDetail;->update_provider_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 82
    iput v0, p0, Lcom/wandoujia/api/proto/TodayDetail;->hashCode:I

    .line 84
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

    :cond_7
    move v0, v1

    .line 80
    goto :goto_5
.end method
