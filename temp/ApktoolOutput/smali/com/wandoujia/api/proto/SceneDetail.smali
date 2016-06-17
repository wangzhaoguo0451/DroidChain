.class public final Lcom/wandoujia/api/proto/SceneDetail;
.super Lcom/squareup/wire/Message;
.source "SceneDetail.java"


# static fields
.field public static final DEFAULT_ENTRY_ICON:Ljava/lang/String; = ""

.field public static final DEFAULT_ENTRY_ICON_PRESSED:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_NEXT_UPDATE:Ljava/lang/Long;

.field public static final DEFAULT_VALID:Ljava/lang/Boolean;

.field public static final DEFAULT_WEIGHT:Ljava/lang/Double;


# instance fields
.field public final entry_icon:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final entry_icon_pressed:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final next_update:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final plot_description:Lcom/wandoujia/api/proto/CountDownText;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final valid:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final weight:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SceneDetail;->DEFAULT_VALID:Ljava/lang/Boolean;

    .line 18
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SceneDetail;->DEFAULT_NEXT_UPDATE:Ljava/lang/Long;

    .line 19
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/SceneDetail;->DEFAULT_WEIGHT:Ljava/lang/Double;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/SceneDetail$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 49
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->name:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail$Builder;->valid:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->valid:Ljava/lang/Boolean;

    .line 51
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail$Builder;->next_update:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->next_update:Ljava/lang/Long;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail$Builder;->weight:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->weight:Ljava/lang/Double;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail$Builder;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail$Builder;->entry_icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/api/proto/SceneDetail$Builder;->entry_icon_pressed:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon_pressed:Ljava/lang/String;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/SceneDetail$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/SceneDetail;-><init>(Lcom/wandoujia/api/proto/SceneDetail$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/SceneDetail;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 62
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/SceneDetail;

    .line 63
    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneDetail;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneDetail;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneDetail;->valid:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneDetail;->valid:Ljava/lang/Boolean;

    .line 64
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneDetail;->next_update:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneDetail;->next_update:Ljava/lang/Long;

    .line 65
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneDetail;->weight:Ljava/lang/Double;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneDetail;->weight:Ljava/lang/Double;

    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneDetail;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneDetail;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon_pressed:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon_pressed:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/SceneDetail;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 74
    iget v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->hashCode:I

    .line 75
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 77
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->valid:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->valid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->next_update:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->next_update:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->weight:Ljava/lang/Double;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->weight:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->plot_description:Lcom/wandoujia/api/proto/CountDownText;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/CountDownText;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 81
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon_pressed:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/SceneDetail;->entry_icon_pressed:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 83
    iput v0, p0, Lcom/wandoujia/api/proto/SceneDetail;->hashCode:I

    .line 85
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 76
    goto :goto_0

    :cond_3
    move v0, v1

    .line 77
    goto :goto_1

    :cond_4
    move v0, v1

    .line 78
    goto :goto_2

    :cond_5
    move v0, v1

    .line 79
    goto :goto_3

    :cond_6
    move v0, v1

    .line 80
    goto :goto_4

    :cond_7
    move v0, v1

    .line 81
    goto :goto_5
.end method
