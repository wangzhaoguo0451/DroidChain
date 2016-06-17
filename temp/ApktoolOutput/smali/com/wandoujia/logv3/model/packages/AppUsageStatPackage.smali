.class public final Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;
.super Lcom/squareup/wire/Message;
.source "AppUsageStatPackage.java"


# static fields
.field public static final DEFAULT_END_TIME:Ljava/lang/Long; = null

.field public static final DEFAULT_IS_SYSTEM:Ljava/lang/Integer; = null

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_SAMPLE_FREQUENCY:Ljava/lang/Integer; = null

.field public static final DEFAULT_START_TIME:Ljava/lang/Long; = null

.field public static final DEFAULT_VERSION_CODE:Ljava/lang/Integer; = null

.field public static final DEFAULT_VERSION_NAME:Ljava/lang/String; = ""


# instance fields
.field public final end_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final is_system:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final package_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sample_frequency:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final start_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->DEFAULT_VERSION_CODE:Ljava/lang/Integer;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->DEFAULT_IS_SYSTEM:Ljava/lang/Integer;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->DEFAULT_SAMPLE_FREQUENCY:Ljava/lang/Integer;

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->DEFAULT_START_TIME:Ljava/lang/Long;

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->DEFAULT_END_TIME:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 61
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->package_name:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_code:Ljava/lang/Integer;

    .line 63
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->version_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_name:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->is_system:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->is_system:Ljava/lang/Integer;

    .line 65
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->sample_frequency:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->sample_frequency:Ljava/lang/Integer;

    .line 66
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->start_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->start_time:Ljava/lang/Long;

    .line 67
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->end_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->end_time:Ljava/lang/Long;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;-><init>(Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-ne p1, p0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 74
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    .line 75
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->package_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_code:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->is_system:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->is_system:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->sample_frequency:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->sample_frequency:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->start_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->start_time:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->end_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->end_time:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 86
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->hashCode:I

    .line 87
    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->package_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->package_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 89
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_code:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 91
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->is_system:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->is_system:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 92
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->sample_frequency:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->sample_frequency:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 93
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->start_time:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->start_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 94
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->end_time:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->end_time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 95
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->hashCode:I

    .line 97
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0

    :cond_3
    move v0, v1

    .line 89
    goto :goto_1

    :cond_4
    move v0, v1

    .line 90
    goto :goto_2

    :cond_5
    move v0, v1

    .line 91
    goto :goto_3

    :cond_6
    move v0, v1

    .line 92
    goto :goto_4

    :cond_7
    move v0, v1

    .line 93
    goto :goto_5
.end method
