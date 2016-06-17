.class public final Lcom/wandoujia/logv3/model/packages/TimePackage;
.super Lcom/squareup/wire/Message;
.source "TimePackage.java"


# static fields
.field public static final DEFAULT_LOCAL_ELAPSED_TIME:Ljava/lang/Long;

.field public static final DEFAULT_LOCAL_TIMESTAMP:Ljava/lang/Long;

.field public static final DEFAULT_LOCAL_TIMEZONE:Ljava/lang/Integer;

.field public static final DEFAULT_SERVER_TIMESTAMP:Ljava/lang/Long;


# instance fields
.field public final local_elapsed_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final local_timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final local_timezone:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final server_timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TimePackage;->DEFAULT_LOCAL_ELAPSED_TIME:Ljava/lang/Long;

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TimePackage;->DEFAULT_LOCAL_TIMESTAMP:Ljava/lang/Long;

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TimePackage;->DEFAULT_SERVER_TIMESTAMP:Ljava/lang/Long;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TimePackage;->DEFAULT_LOCAL_TIMEZONE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 47
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_elapsed_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_elapsed_time:Ljava/lang/Long;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timestamp:Ljava/lang/Long;

    .line 49
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->server_timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->server_timestamp:Ljava/lang/Long;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_timezone:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timezone:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/TimePackage;-><init>(Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 57
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/TimePackage;

    .line 58
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_elapsed_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_elapsed_time:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TimePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timestamp:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TimePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->server_timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;->server_timestamp:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TimePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timezone:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timezone:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TimePackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 66
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->hashCode:I

    .line 67
    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_elapsed_time:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_elapsed_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 69
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 70
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->server_timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->server_timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 71
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timezone:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->local_timezone:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 72
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/TimePackage;->hashCode:I

    .line 74
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 68
    goto :goto_0

    :cond_3
    move v0, v1

    .line 69
    goto :goto_1

    :cond_4
    move v0, v1

    .line 70
    goto :goto_2
.end method
