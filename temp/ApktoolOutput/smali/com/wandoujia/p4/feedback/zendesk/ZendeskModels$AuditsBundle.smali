.class public Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;
.super Ljava/lang/Object;
.source "ZendeskModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private audits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;",
            ">;"
        }
    .end annotation
.end field

.field private isClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->audits:Ljava/util/List;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->isClosed:Z

    return v0
.end method

.method public setAudits(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->audits:Ljava/util/List;

    .line 307
    return-void
.end method

.method public setClosed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->isClosed:Z

    .line 299
    return-void
.end method
