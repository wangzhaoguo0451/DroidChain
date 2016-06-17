.class public final Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;
.super Lcom/squareup/wire/Message;
.source "IASQueryInfoPackage.java"


# static fields
.field public static final DEFAULT_SESSION_BUICKET_ID:Ljava/lang/Integer;

.field public static final DEFAULT_USER_BUCKET_ID:Ljava/lang/Integer;


# instance fields
.field public final session_buicket_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_bucket_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->DEFAULT_USER_BUCKET_ID:Ljava/lang/Integer;

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->DEFAULT_SESSION_BUICKET_ID:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 106
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;->user_bucket_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->user_bucket_id:Ljava/lang/Integer;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;->session_buicket_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->session_buicket_id:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 114
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;

    .line 115
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->user_bucket_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->user_bucket_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->session_buicket_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->session_buicket_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 121
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->hashCode:I

    .line 122
    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->user_bucket_id:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->user_bucket_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 124
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->session_buicket_id:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->session_buicket_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 125
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/IASQueryInfoPackage$IASBucketPackage;->hashCode:I

    .line 127
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 123
    goto :goto_0
.end method
