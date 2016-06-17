.class public final Lcom/wandoujia/logv3/model/packages/DownloadPackage;
.super Lcom/squareup/wire/Message;
.source "DownloadPackage.java"


# static fields
.field public static final DEFAULT_CLIENT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_COOKIES:Ljava/lang/String; = ""

.field public static final DEFAULT_DOWNLOAD_SIZE:Ljava/lang/Long; = null

.field public static final DEFAULT_DURATION:Ljava/lang/Long; = null

.field public static final DEFAULT_ERROR_CODE:Ljava/lang/Integer; = null

.field public static final DEFAULT_FILE_PATH:Ljava/lang/String; = ""

.field public static final DEFAULT_REFER:Ljava/lang/String; = ""

.field public static final DEFAULT_STATUS:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status; = null

.field public static final DEFAULT_TOTAL_SIZE:Ljava/lang/Long; = null

.field public static final DEFAULT_TRACK_INFO:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type; = null

.field public static final DEFAULT_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_VERIFY_DIGEST:Ljava/lang/String; = ""

.field public static final DEFAULT_VERIFY_TYPE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;


# instance fields
.field public final client_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final cookies:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final download_size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final duration:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final error_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final file_path:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final refer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final total_size:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final track_info:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final verify_digest:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 18
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->COMMON:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    .line 22
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->NONE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->DEFAULT_VERIFY_TYPE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->DEFAULT_ERROR_CODE:Ljava/lang/Integer;

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->DEFAULT_TOTAL_SIZE:Ljava/lang/Long;

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->DEFAULT_DOWNLOAD_SIZE:Ljava/lang/Long;

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->DEFAULT_DURATION:Ljava/lang/Long;

    .line 29
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->PENDING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->DEFAULT_STATUS:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 117
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->client_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->client_name:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->url:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    .line 120
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->cookies:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->cookies:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->refer:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->refer:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->file_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->file_path:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 124
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->verify_digest:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_digest:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->error_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->error_code:Ljava/lang/Integer;

    .line 126
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->total_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->total_size:Ljava/lang/Long;

    .line 127
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->download_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->download_size:Ljava/lang/Long;

    .line 128
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->duration:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->duration:Ljava/lang/Long;

    .line 129
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->track_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->track_info:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;-><init>(Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p1, p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 137
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    .line 138
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->client_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->client_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->url:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->cookies:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->cookies:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->refer:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->refer:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->file_path:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->file_path:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_digest:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_digest:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->error_code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->error_code:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->total_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->total_size:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->download_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->download_size:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->duration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->duration:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->track_info:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->track_info:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 156
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->hashCode:I

    .line 157
    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->client_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->client_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 159
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 160
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 161
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->cookies:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->cookies:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->refer:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->refer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->file_path:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->file_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_digest:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_digest:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->error_code:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->error_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 167
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->total_size:Ljava/lang/Long;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->total_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->download_size:Ljava/lang/Long;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->download_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 169
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->duration:Ljava/lang/Long;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->duration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->track_info:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->track_info:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 171
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 172
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->hashCode:I

    .line 174
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 158
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 159
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 160
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 161
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 162
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 163
    goto :goto_5

    :cond_8
    move v0, v1

    .line 164
    goto :goto_6

    :cond_9
    move v0, v1

    .line 165
    goto :goto_7

    :cond_a
    move v0, v1

    .line 166
    goto :goto_8

    :cond_b
    move v0, v1

    .line 167
    goto :goto_9

    :cond_c
    move v0, v1

    .line 168
    goto :goto_a

    :cond_d
    move v0, v1

    .line 169
    goto :goto_b

    :cond_e
    move v0, v1

    .line 170
    goto :goto_c
.end method
