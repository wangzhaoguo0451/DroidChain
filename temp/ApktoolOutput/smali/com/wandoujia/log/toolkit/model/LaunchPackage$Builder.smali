.class public final Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LaunchPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/log/toolkit/model/LaunchPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public activity:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/log/toolkit/model/LaunchPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 80
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->action:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->activity:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->data:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchPackage;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->reason:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final action(Ljava/lang/String;)Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->action:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public final activity(Ljava/lang/String;)Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->activity:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->build()Lcom/wandoujia/log/toolkit/model/LaunchPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/log/toolkit/model/LaunchPackage;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/wandoujia/log/toolkit/model/LaunchPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/log/toolkit/model/LaunchPackage;-><init>(Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final data(Ljava/lang/String;)Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->data:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public final reason(Ljava/lang/String;)Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->reason:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public final sourcePackage(Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;)Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/log/toolkit/model/LaunchPackage$Builder;->sourcePackage:Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    .line 90
    return-object p0
.end method
