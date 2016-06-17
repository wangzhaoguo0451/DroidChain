.class final Lelr;
.super Ljava/lang/Object;
.source "SuggestionInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lelq;


# direct methods
.method constructor <init>(Lelq;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lelr;->a:Lelq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lelr;->a:Lelq;

    invoke-static {v0}, Lelq;->a(Lelq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-static {v0}, Lehx;->a(Landroid/view/View;)V

    .line 72
    return-void
.end method
