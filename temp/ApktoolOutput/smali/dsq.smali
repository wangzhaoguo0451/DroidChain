.class final Ldsq;
.super Ljava/lang/Object;
.source "SearchSuggestionTextView.java"

# interfaces
.implements Lagt;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ldso;


# direct methods
.method constructor <init>(Ldso;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Ldsq;->b:Ldso;

    iput-object p2, p0, Ldsq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Ldsq;->b:Ldso;

    iget-object v0, v0, Ldso;->a:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ldsq;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->a(Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;Ljava/util/List;Ljava/lang/String;)V

    .line 123
    return-void
.end method
