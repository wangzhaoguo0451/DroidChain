.class public final Lcom/wandoujia/logv3/model/packages/TaskEvent;
.super Lcom/squareup/wire/Message;
.source "TaskEvent.java"


# static fields
.field public static final DEFAULT_ACTION:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action; = null

.field public static final DEFAULT_EFFECT_NUM:Ljava/lang/Long; = null

.field public static final DEFAULT_ERROR_DETAIL:Ljava/lang/String; = ""

.field public static final DEFAULT_IDENTITY:Ljava/lang/Integer; = null

.field public static final DEFAULT_RESULT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result; = null

.field public static final DEFAULT_RESULT_INFO:Ljava/lang/String; = ""

.field public static final DEFAULT_STATUS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;


# instance fields
.field public final action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final effect_num:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final error_detail:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final identity:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final result_info:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->DEFAULT_IDENTITY:Ljava/lang/Integer;

    .line 20
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->DEFAULT_STATUS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 21
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->DEFAULT_RESULT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 22
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->DEFAULT_ACTION:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 25
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->DEFAULT_EFFECT_NUM:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 77
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->identity:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->identity:Ljava/lang/Integer;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->error_detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->error_detail:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 83
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->effect_num:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->effect_num:Ljava/lang/Long;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/TaskEvent;-><init>(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 91
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;

    .line 92
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->identity:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->identity:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->error_detail:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->error_detail:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->effect_num:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->effect_num:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 104
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->hashCode:I

    .line 105
    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->identity:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->identity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 107
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->error_detail:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->error_detail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 113
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->effect_num:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->effect_num:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 114
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->hashCode:I

    .line 116
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 106
    goto :goto_0

    :cond_3
    move v0, v1

    .line 107
    goto :goto_1

    :cond_4
    move v0, v1

    .line 108
    goto :goto_2

    :cond_5
    move v0, v1

    .line 109
    goto :goto_3

    :cond_6
    move v0, v1

    .line 110
    goto :goto_4

    :cond_7
    move v0, v1

    .line 111
    goto :goto_5

    :cond_8
    move v0, v1

    .line 112
    goto :goto_6
.end method
