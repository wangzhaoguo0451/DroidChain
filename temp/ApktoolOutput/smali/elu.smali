.class final Lelu;
.super Ljava/lang/Object;
.source "SuggestionInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;

.field private synthetic c:Lelq;


# direct methods
.method constructor <init>(Lelq;Ljava/lang/String;Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lelu;->c:Lelq;

    iput-object p2, p0, Lelu;->a:Ljava/lang/String;

    iput-object p3, p0, Lelu;->b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lelu;->c:Lelq;

    iget-object v1, p0, Lelu;->a:Ljava/lang/String;

    iget-object v2, p0, Lelu;->b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;

    invoke-static {v0, v1, v2}, Lelq;->a(Lelq;Ljava/lang/String;Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;)V

    .line 120
    return-void
.end method
