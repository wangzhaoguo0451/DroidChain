.class public Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;
.super Ljava/lang/Object;
.source "LauncherSuggestions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private case0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;"
        }
    .end annotation
.end field

.field private case1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;"
        }
    .end annotation
.end field

.field private error:I

.field private msg:Ljava/lang/String;

.field private recommendTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCase0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->case0:Ljava/util/List;

    return-object v0
.end method

.method public getCase1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->case1:Ljava/util/List;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->error:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->recommendTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setCase0(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->case0:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setCase1(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->case1:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setError(I)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->error:I

    .line 23
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/LauncherSuggestions;->msg:Ljava/lang/String;

    .line 31
    return-void
.end method
