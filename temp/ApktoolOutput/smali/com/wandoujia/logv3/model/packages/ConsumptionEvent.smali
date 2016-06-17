.class public final Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;
.super Lcom/squareup/wire/Message;
.source "ConsumptionEvent.java"


# static fields
.field public static final DEFAULT_RESULT:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result; = null

.field public static final DEFAULT_SOURCE:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;


# instance fields
.field public final from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final source:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->DEFAULT_TYPE:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 19
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->DEFAULT_RESULT:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 53
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->source:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    .line 56
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 57
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p1, p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 64
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    .line 65
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->source:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->hashCode:I

    .line 75
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->type:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->hashCode()I

    move-result v0

    .line 77
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->source:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->result:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Result;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->from_page:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;->hashCode:I

    .line 83
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
.end method
