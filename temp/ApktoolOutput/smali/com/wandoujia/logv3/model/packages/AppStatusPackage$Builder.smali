.class public final Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AppStatusPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/AppStatusPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public app_version_code:Ljava/lang/Integer;

.field public app_version_name:Ljava/lang/String;

.field public is_installed:Ljava/lang/Boolean;

.field public is_predownload:Ljava/lang/Boolean;

.field public pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/AppStatusPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 103
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_predownload:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->is_predownload:Ljava/lang/Boolean;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->is_installed:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->is_installed:Ljava/lang/Boolean;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->app_version_name:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->app_version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->app_version_code:Ljava/lang/Integer;

    .line 108
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    goto :goto_0
.end method


# virtual methods
.method public final app_version_code(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->app_version_code:Ljava/lang/Integer;

    .line 140
    return-object p0
.end method

.method public final app_version_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->app_version_name:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/AppStatusPackage;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/AppStatusPackage;-><init>(Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final is_installed(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->is_installed:Ljava/lang/Boolean;

    .line 124
    return-object p0
.end method

.method public final is_predownload(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->is_predownload:Ljava/lang/Boolean;

    .line 116
    return-object p0
.end method

.method public final pattern(Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;)Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Builder;->pattern:Lcom/wandoujia/logv3/model/packages/AppStatusPackage$Pattern;

    .line 148
    return-object p0
.end method
