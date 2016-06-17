.class public final Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaskEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/TaskEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

.field public effect_num:Ljava/lang/Long;

.field public error_detail:Ljava/lang/String;

.field public identity:Ljava/lang/Integer;

.field public result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

.field public result_info:Ljava/lang/String;

.field public status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

.field public view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/TaskEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 135
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->identity:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->identity:Ljava/lang/Integer;

    .line 137
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 138
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 139
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 140
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->error_detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->error_detail:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 142
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info:Ljava/lang/String;

    .line 143
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TaskEvent;->effect_num:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->effect_num:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    .line 175
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/TaskEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/TaskEvent;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent;-><init>(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final effect_num(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->effect_num:Ljava/lang/Long;

    .line 207
    return-object p0
.end method

.method public final error_detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->error_detail:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public final identity(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->identity:Ljava/lang/Integer;

    .line 151
    return-object p0
.end method

.method public final result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 167
    return-object p0
.end method

.method public final result_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public final status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 159
    return-object p0
.end method

.method public final view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 191
    return-object p0
.end method
