.class public final Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApplicationCrashEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public activity:Ljava/lang/String;

.field public detail:Ljava/lang/String;

.field public is_launch:Ljava/lang/Boolean;

.field public type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

.field public view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 101
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->detail:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->detail:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->is_launch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->is_launch:Ljava/lang/Boolean;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;->activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->activity:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final activity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->activity:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;-><init>(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->detail:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public final is_launch(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->is_launch:Ljava/lang/Boolean;

    .line 138
    return-object p0
.end method

.method public final type(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;)Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    .line 114
    return-object p0
.end method

.method public final view(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 130
    return-object p0
.end method
