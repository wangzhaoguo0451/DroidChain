.class public final Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ViewLogPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ViewLogPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

.field public element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field public index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

.field public module:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

.field public value:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 123
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 125
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 126
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    .line 127
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module:Ljava/lang/String;

    .line 128
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    .line 129
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->value:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->value:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final action(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    .line 154
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final element(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    .line 146
    return-object p0
.end method

.method public final index(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->index:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    .line 170
    return-object p0
.end method

.method public final module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public final url_package(Lcom/wandoujia/logv3/model/packages/UrlPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    .line 138
    return-object p0
.end method

.method public final value(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->value:Ljava/lang/Long;

    .line 186
    return-object p0
.end method
