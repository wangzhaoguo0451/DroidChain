.class public final Lcom/wandoujia/api/proto/SuggestionDetail;
.super Lcom/squareup/wire/Message;
.source "SuggestionDetail.java"


# static fields
.field public static final DEFAULT_DEADLINE:Ljava/lang/Long; = null

.field public static final DEFAULT_FIELD:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/MapFieldEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_NOTIFICATION_STYLE:Ljava/lang/Integer;

.field public static final DEFAULT_WEIGHT:Ljava/lang/Double;


# instance fields
.field public final deadline:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final field:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/MapFieldEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final notification_style:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final weight:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SuggestionDetail;->DEFAULT_FIELD:Ljava/util/List;

    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SuggestionDetail;->DEFAULT_WEIGHT:Ljava/lang/Double;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SuggestionDetail;->DEFAULT_NOTIFICATION_STYLE:Ljava/lang/Integer;

    .line 22
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SuggestionDetail;->DEFAULT_DEADLINE:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/SuggestionDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 44
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->name:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->field:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/api/proto/SuggestionDetail;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->field:Ljava/util/List;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->weight:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->weight:Ljava/lang/Double;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->notification_style:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->notification_style:Ljava/lang/Integer;

    .line 48
    iget-object v0, p1, Lcom/wandoujia/api/proto/SuggestionDetail$Builder;->deadline:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->deadline:Ljava/lang/Long;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/SuggestionDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/SuggestionDetail;-><init>(Lcom/wandoujia/api/proto/SuggestionDetail$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/wandoujia/api/proto/SuggestionDetail;->copyOf(Ljava/util/List;)Ljava/util/List;

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

    .line 53
    if-ne p1, p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/SuggestionDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 55
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/SuggestionDetail;

    .line 56
    iget-object v2, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SuggestionDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->field:Ljava/util/List;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->field:Ljava/util/List;

    .line 57
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SuggestionDetail;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->weight:Ljava/lang/Double;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->weight:Ljava/lang/Double;

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SuggestionDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->notification_style:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->notification_style:Ljava/lang/Integer;

    .line 59
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SuggestionDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->deadline:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SuggestionDetail;->deadline:Ljava/lang/Long;

    .line 60
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SuggestionDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 65
    iget v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->hashCode:I

    .line 66
    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 68
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->field:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->field:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->weight:Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->weight:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 70
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->notification_style:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->notification_style:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 71
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->deadline:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->deadline:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 72
    iput v0, p0, Lcom/wandoujia/api/proto/SuggestionDetail;->hashCode:I

    .line 74
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 69
    goto :goto_2

    :cond_5
    move v0, v1

    .line 70
    goto :goto_3
.end method
