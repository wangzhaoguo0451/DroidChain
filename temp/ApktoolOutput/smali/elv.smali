.class final Lelv;
.super Ljava/lang/Object;
.source "SuggestionInputView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lelq;


# direct methods
.method constructor <init>(Lelq;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lelv;->a:Lelq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    if-eqz p3, :cond_1

    .line 146
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 148
    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lelv;->a:Lelq;

    invoke-static {v0}, Lelq;->a(Lelq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 150
    iget-object v0, p0, Lelv;->a:Lelq;

    iget-object v1, p0, Lelv;->a:Lelq;

    invoke-virtual {v1}, Lelq;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SEARCH:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    invoke-static {v0, v1, v2}, Lelq;->a(Lelq;Ljava/lang/String;Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;)V

    .line 151
    iget-object v0, p0, Lelv;->a:Lelq;

    invoke-virtual {v0}, Lelq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 155
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
