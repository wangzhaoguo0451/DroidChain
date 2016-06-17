.class public final Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "NotificationEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/NotificationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

.field public extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

.field public landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/NotificationEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 96
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->title:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->type:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    goto :goto_0
.end method


# virtual methods
.method public final action(Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;)Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->action:Lcom/wandoujia/logv3/model/packages/NotificationEvent$Action;

    .line 109
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/NotificationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/NotificationEvent;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NotificationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/NotificationEvent;-><init>(Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 141
    return-object p0
.end method

.method public final landing_page(Lcom/wandoujia/logv3/model/packages/UrlPackage;)Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 133
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->title:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationEvent$Builder;->type:Ljava/lang/String;

    .line 125
    return-object p0
.end method
