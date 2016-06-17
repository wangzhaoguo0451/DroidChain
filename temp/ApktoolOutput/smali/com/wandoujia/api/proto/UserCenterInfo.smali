.class public final Lcom/wandoujia/api/proto/UserCenterInfo;
.super Lcom/squareup/wire/Message;
.source "UserCenterInfo.java"


# static fields
.field public static final DEFAULT_ACTIVESINA:Ljava/lang/Boolean; = null

.field public static final DEFAULT_AVATAR:Ljava/lang/String; = ""

.field public static final DEFAULT_UID:Ljava/lang/String; = ""

.field public static final DEFAULT_USERNAME:Ljava/lang/String; = ""


# instance fields
.field public final activeSina:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final avatar:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final uid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final username:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/UserCenterInfo;->DEFAULT_ACTIVESINA:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/UserCenterInfo$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 32
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->uid:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->username:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->activeSina:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->activeSina:Ljava/lang/Boolean;

    .line 35
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->avatar:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/UserCenterInfo$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/UserCenterInfo;-><init>(Lcom/wandoujia/api/proto/UserCenterInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/UserCenterInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 42
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/UserCenterInfo;

    .line 43
    iget-object v2, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/UserCenterInfo;->uid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/UserCenterInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->username:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/UserCenterInfo;->username:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/UserCenterInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->activeSina:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/UserCenterInfo;->activeSina:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/UserCenterInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/UserCenterInfo;->avatar:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/UserCenterInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 51
    iget v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->hashCode:I

    .line 52
    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->uid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->username:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 55
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->activeSina:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->activeSina:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 56
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->avatar:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 57
    iput v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo;->hashCode:I

    .line 59
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 53
    goto :goto_0

    :cond_3
    move v0, v1

    .line 54
    goto :goto_1

    :cond_4
    move v0, v1

    .line 55
    goto :goto_2
.end method
