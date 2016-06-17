.class final Lelw;
.super Ljava/lang/Object;
.source "SuggestionInputView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lelq;


# direct methods
.method constructor <init>(Lelq;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lelw;->a:Lelq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lelw;->a:Lelq;

    invoke-virtual {v0}, Lelq;->a()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lelw;->a:Lelq;

    invoke-static {v1, p3}, Lelq;->a(Lelq;I)Z

    move-result v1

    invoke-static {p2, v1, v0}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Landroid/view/View;ZLjava/lang/String;)V

    .line 173
    iget-object v1, p0, Lelw;->a:Lelq;

    sget-object v2, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SUGGESTION:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    invoke-static {v1, v0, v2}, Lelq;->a(Lelq;Ljava/lang/String;Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;)V

    .line 174
    return-void
.end method
