.class public final Lcom/wandoujia/api/proto/ClientConfigResponse;
.super Lcom/squareup/wire/Message;
.source "ClientConfigResponse.java"


# static fields
.field public static final DEFAULT_ALARM_HOUR:Ljava/lang/Integer; = null

.field public static final DEFAULT_ALARM_SUBTITLE:Ljava/lang/String; = ""

.field public static final DEFAULT_ALARM_TEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_ALARM_TITLE:Ljava/lang/String; = ""


# instance fields
.field public final alarm_hour:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final alarm_subtitle:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final alarm_text:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final alarm_title:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/ClientConfigResponse;->DEFAULT_ALARM_HOUR:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 35
    iget-object v0, p1, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_hour:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_hour:Ljava/lang/Integer;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_text:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_title:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;->alarm_subtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_subtitle:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/ClientConfigResponse;-><init>(Lcom/wandoujia/api/proto/ClientConfigResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 45
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/ClientConfigResponse;

    .line 46
    iget-object v2, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_hour:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_hour:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ClientConfigResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_text:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_text:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ClientConfigResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_title:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_title:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ClientConfigResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_subtitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_subtitle:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/ClientConfigResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 54
    iget v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->hashCode:I

    .line 55
    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_hour:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_hour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 57
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_text:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 58
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_title:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 59
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_subtitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->alarm_subtitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 60
    iput v0, p0, Lcom/wandoujia/api/proto/ClientConfigResponse;->hashCode:I

    .line 62
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 56
    goto :goto_0

    :cond_3
    move v0, v1

    .line 57
    goto :goto_1

    :cond_4
    move v0, v1

    .line 58
    goto :goto_2
.end method
