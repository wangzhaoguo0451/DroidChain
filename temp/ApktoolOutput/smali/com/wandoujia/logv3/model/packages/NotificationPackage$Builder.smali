.class public final Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "NotificationPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/NotificationPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

.field public style:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/NotificationPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 98
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->title:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->id:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->type:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->style:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->style:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NotificationPackage;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/NotificationPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/NotificationPackage;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NotificationPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/NotificationPackage;-><init>(Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->id:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public final landing_page(Lcom/wandoujia/logv3/model/packages/UrlPackage;)Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->landing_page:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 143
    return-object p0
.end method

.method public final style(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->style:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->title:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NotificationPackage$Builder;->type:Ljava/lang/String;

    .line 127
    return-object p0
.end method
